defmodule A4word.Generator do
  @writing_dir "../writing"

  def run(dir \\ @writing_dir) do
    publish_publications("#{dir}/publications")
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
