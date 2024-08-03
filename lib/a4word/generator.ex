defmodule A4word.Generator do
  @writing_dir "../writing"

  def run(dir \\ @writing_dir) do
    publish_publications("#{dir}/publications")
    publish_talks("#{dir}/talks")
    publish_books("#{dir}/books")
    publish_portfolio("#{dir}/portfolio")
    :ok
  end

  def publish_publications(dir) do
    publications = publications(dir)

    gen = """
    defmodule Gen.Publications do
      def all() do
        [
          #{publications |> Enum.map(&"#{inspect(&1)},") |> Enum.join("\n")}
        ]
      end

    end
    """

    File.write("./lib/gen/publications.ex", gen)
  end

  def publish_talks(dir) do
    talks = talks(dir)

    gen = """
    defmodule Gen.Talks do
      def all() do
        [
          #{talks |> Enum.map(&"#{inspect(&1)},") |> Enum.join("\n")}
        ]
        |> Enum.map(&to_html/1)
      end

      defp to_html(talk) do
        talk
        |> Enum.map(fn
          {:pitch, markdown} -> {:pitch, A4word.Markdown.to_html(markdown)}
          {:summary, markdown} -> {:summary, A4word.Markdown.to_html(markdown)}
          {k, v} -> {k, v}
        end)
        |> Enum.into(%{})
      end
    end
    """

    File.write("./lib/gen/talks.ex", gen)
  end

  def publish_books(dir) do
    File.rm_rf("./priv/static/images/book-covers")
    File.cp_r("#{dir}/covers", "./priv/static/images/book-covers")

    books = books(dir)

    gen = """
    defmodule Gen.Books do
      def all() do
        [
          #{books |> Enum.map(&"#{inspect(&1)},") |> Enum.join("\n")}
        ]
        |> Enum.map(&to_html/1)
      end

      defp to_html(book) do
        book
        |> Enum.map(fn
          {:summary, markdown} -> {:summary, A4word.Markdown.to_html(markdown)}
          {k, v} -> {k, v}
        end)
        |> Enum.into(%{})
      end
    end
    """

    File.write("./lib/gen/books.ex", gen)
  end

  def publications(dir) do
    filenames =
      dir
      |> File.ls!()
      |> Enum.filter(&String.ends_with?(&1, ".md"))
      |> Enum.map(&"#{dir}/#{&1}")

    filenames
    |> Enum.map(fn filename ->
      filename
      |> File.stream!()
      |> Enum.reduce({nil, step: :title}, fn
        line, {_, step: :title} ->
          {%{title: clean(line)}, step: :conference}

        line, {pub, step: :conference} ->
          [conference, year] = String.split(clean(line), " - ", parts: 2)

          pub
          |> Map.put(:conference, conference)
          |> Map.put(:year, year)
          |> then(&{&1, step: :skip})

        line, {pub, step: section} ->
          analyze_section(pub, line, section)
      end)
      |> then(fn {pub, step: section} -> clean_section(pub, section) end)
    end)
    |> Enum.sort(fn a, b ->
      cond do
        a.year > b.year -> true
        a.year == b.year and a.title < b.title -> true
        :else -> false
      end
    end)
  end

  def publish_portfolio(dir) do
    File.rm_rf("./priv/static/images/portfolio")
    File.cp_r("#{dir}/images", "./priv/static/images/portfolio")
  end

  def talks(dir) do
    filenames =
      dir
      |> File.ls!()
      |> Enum.filter(&String.ends_with?(&1, ".md"))
      |> Enum.map(&"#{dir}/#{&1}")

    filenames
    |> Enum.map(fn filename ->
      filename
      |> File.stream!()
      |> Enum.reduce({nil, step: :title}, fn
        line, {_, step: :title} ->
          {%{title: clean(line)}, step: :conference}

        line, {pub, step: :conference} ->
          [conference, year] = String.split(clean(line), " - ", parts: 2)

          pub
          |> Map.put(:conference, conference)
          |> Map.put(:year, year)
          |> then(&{&1, step: :skip})

        line, {pub, step: section} ->
          analyze_section(pub, line, section)
      end)
      |> then(fn {pub, step: section} -> clean_section(pub, section) end)
    end)
    |> Enum.sort(fn a, b ->
      cond do
        a.year > b.year -> true
        a.year == b.year and a.title < b.title -> true
        :else -> false
      end
    end)
  end

  def books(dir) do
    filenames =
      dir
      |> File.ls!()
      |> Enum.filter(&String.ends_with?(&1, ".md"))
      |> Enum.map(&"#{dir}/#{&1}")

    filenames
    |> Enum.map(fn filename ->
      filename
      |> File.stream!()
      |> Enum.reduce({nil, step: :title}, fn
        line, {_, step: :title} ->
          {%{title: clean(line)}, step: :author}

        line, {pub, step: :author} ->
          {Map.put(pub, :author, clean(line)), step: :meta}

        line, {pub, step: :meta} ->
          case analyze_meta(line) do
            {k, v} -> {Map.put(pub, k, v), step: :meta}
            :next -> {Map.put(pub, :summary, line), step: :img}
          end

        line, {pub, step: :img} ->
          if String.starts_with?(line, "![") do
            {Map.put(pub, :img, clean(line)), step: :summary}
          else
            {pub, step: :img}
          end

        line, {pub, step: :summary} ->
          {append_section(pub, line, :summary), step: :summary}

        line, {pub, step: section} ->
          IO.inspect("Ignoring #{line}")
          {pub, step: section}
      end)
      |> then(fn {pub, step: section} -> clean_section(pub, section) end)
      |> then(&Map.put(&1, :slug, Path.basename(filename, ".md")))
    end)
    |> Enum.sort_by(& &1.datetime, :desc)
  end

  defp analyze_meta(line) do
    if String.starts_with?(line, "#meta") do
      line
      |> String.replace(~r{^#meta}, "")
      |> String.trim()
      |> String.split(" ", parts: 2)
      |> then(fn [k, v] -> {String.to_atom(k), v} end)
    else
      :next
    end
  end

  defp analyze_section(pub, line, section) do
    next_section =
      if String.starts_with?(line, "##") do
        line |> clean() |> String.downcase() |> String.to_atom()
      else
        nil
      end

    case next_section do
      nil ->
        {append_section(pub, line, section), step: section}

      next_section ->
        {pub |> clean_section(section) |> Map.put(next_section, ""), step: next_section}
    end
  end

  defp append_section(pub, _line, :skip), do: pub

  defp append_section(pub, line, section) do
    pub
    |> Map.get(section)
    |> then(&(&1 <> line))
    |> then(&Map.put(pub, section, &1))
  end

  defp clean_section(pub, :skip), do: pub

  defp clean_section(pub, section) do
    pub
    |> Map.get(section)
    |> then(&String.trim(&1))
    |> then(&Map.put(pub, section, &1))
  end

  defp filename(slug, dir), do: "#{dir}/#{slug}.md"

  # def title(slug, mode, dir), do: line(slug, 1, mode, dir)
  # def author(slug, mode, dir), do: line(slug, 2, mode, dir)

  # def line(slug, line, mode, dir) do
  #   line =
  #     slug
  #     |> filename(dir)
  #     |> File.stream!()
  #     |> Stream.drop(line - 1)
  #     |> Enum.take(1)
  #     |> case do
  #       [] -> slug
  #       [line] -> line |> String.replace(~r{^#*\s*}, "")
  #     end

  #   case mode do
  #     :escape -> String.replace(line, "\"", "\\\"")
  #     _else -> line
  #   end
  #   |> String.trim()
  # end

  def metadata(slug, dir) do
    slug
    |> filename(dir)
    |> File.stream!()
    |> Enum.filter(&String.starts_with?(&1, "#meta"))
    |> Enum.map(fn raw_line ->
      raw_line
      |> String.replace(~r{^#meta}, "")
      |> String.trim()
      |> String.split(" ", parts: 2)
      |> case do
        [k, v] -> {k, v}
      end
    end)
    |> Enum.into(%{})
  end

  # defp summary(slug, dir) do
  #   slug
  #   |> filename(dir)
  #   |> File.stream!()
  #   |> Enum.chunk_while(
  #     {:before, []},
  #     fn
  #       "## Summary\n", _ ->
  #         {:cont, nil, {:inside, []}}

  #       "## Article\n", {_, acc} ->
  #         {:halt, acc}

  #       line, {:inside, all} ->
  #         {:cont, nil, {:inside, [line | all]}}

  #       _line, asis ->
  #         {:cont, nil, asis}
  #     end,
  #     fn acc -> {:cont, acc |> Enum.reverse(), acc} end
  #   )
  #   |> to_html()
  # end

  # def body(slug, start_line, dir) do
  #   slug
  #   |> filename(dir)
  #   |> File.stream!()
  #   |> Stream.drop(start_line - 1)
  #   |> Enum.into([])
  #   |> to_html()
  # end

  # def article(slug, dir) do
  #   slug
  #   |> filename(dir)
  #   |> File.stream!()
  #   |> Enum.drop_while(&(&1 != "## Article\n"))
  #   |> Enum.drop(1)
  #   |> to_html()
  # end

  # defp to_html(chunked) do
  #   chunked
  #   |> List.flatten()
  #   |> Enum.map(&format_image/1)
  #   |> Enum.map(&escape_elixir/1)
  #   |> Enum.join()
  #   |> Earmark.as_html!(%Earmark.Options{
  #     code_class_prefix: "language-",
  #     smartypants: false
  #   })
  #   |> String.split("\n")
  #   |> Enum.map(&"  #{&1}\n")
  #   |> Enum.join()
  #   |> String.trim()
  # end

  # defp escape_elixir(nil), do: nil

  # defp escape_elixir(line) do
  #   line
  #   |> String.replace("\#{", "\\\#{")
  # end

  # defp format_image(nil), do: nil

  # defp format_image(line) do
  #   case Regex.run(~r{!\[[^\]]*\]\(([^\s]*)\)}, line) do
  #     nil ->
  #       line

  #     [_, path] ->
  #       cond do
  #         String.starts_with?(path, "http") ->
  #           line

  #         String.starts_with?(path, "/") ->
  #           line

  #         :else ->
  #           String.replace(line, "(#{path})", "(/images/blog/#{path})")
  #       end
  #   end
  # end

  defp clean(line), do: line |> String.trim() |> String.replace(~r{^#*\s*}, "")
end
