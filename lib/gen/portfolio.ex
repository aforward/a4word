defmodule Gen.Portfolio do
  def all() do
    [
      %{
        status: "active",
        title: "LetsCode",
        details:
          "As a teacher of programming languages, I have struggled with the best way to teach a programming language in a lecture style course (yes we include hands on labs, but when actually discussing the syntax and semantics to a group of 60).  I built letscode.ca as a prototype system to where each student (with access to a laptop or phone during the lecture) could watch (live) various scenarios, but the professor could also allow others, in real-time, to provide their own insight.\n\nThe tool was used in 2017, and offered a shared IDE in the browser to experiment with Elixir, Java, C and PHP.  Online tools like Replit,\nwith much more funding than a side-project, usurped the capabilities of LetsCode\nand the tool was decommissioned in 2020.",
        summary:
          "An _experimental_ teaching aide for interacting with students while teaching lectures on programming languages.\nThe site is no longer live.\n\nThis tool gave students a playground to try ideas during the lecture to explore variations of examples presented during class and allowed the presenter to give students to control of the shared text editor so they could live demo their question “Hey, what about this snippet of code”.",
        slug: "letscode",
        tech: ["Elixir", "Phoenix", "Docker"],
        infra: ["Digital Ocean"],
        primary_image: "![Welcome image for LetsCode](images/letscode/letscode_welcome.png)",
        other_images: [
          "![Editing Code](images/letscode/letscode_editor.png)",
          "![Editing Elixir](images/letscode/letscode_elixir.png)"
        ],
        subtitle: "A shared editor to help teach programming languages"
      }
    ]
    |> Enum.map(&to_html/1)
  end

  def project(slug), do: Keyword.get(all(), slug)

  defp to_html(talk) do
    talk
    |> Enum.map(fn
      {:summary, markdown} -> {:summary, A4word.Markdown.to_html(markdown)}
      {:details, markdown} -> {:details, A4word.Markdown.to_html(markdown)}
      {:primary_image, image} -> {:primary_image, A4word.Markdown.to_html(image)}
      {:other_images, list} -> {:other_images, Enum.map(list, &A4word.Markdown.to_html/1)}
      {k, v} -> {k, v}
    end)
    |> Enum.into(%{})
    |> then(fn data -> {String.to_atom(data.slug), data} end)
  end
end
