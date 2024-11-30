defmodule Gen.Portfolio do
  def all() do
    [
      %{
        status: "active",
        date: "2017-11-25",
        title: "LetsCode",
        details:
          "As a teacher of programming languages, I have struggled with the best way to teach a programming language in a lecture style course (yes we include hands on labs, but when actually discussing the syntax and semantics to a group of 60).  I built letscode.ca as a prototype system to where each student (with access to a laptop or phone during the lecture) could watch (live) various scenarios, but the professor could also allow others, in real-time, to provide their own insight.\n\nThe tool was used in 2017, and offered a shared IDE in the browser to experiment with Elixir, Java, C and PHP.  Online tools like Replit,\nwith much more funding than a side-project, usurped the capabilities of LetsCode\nand the tool was decommissioned in 2020.",
        repos: [
          "https://github.com/aforward/letscode",
          "https://github.com/aforward/sandbox_repl"
        ],
        summary:
          "An _experimental_ teaching aide for interacting with students while teaching lectures on programming languages.\nThe site is no longer live.\n\nThis tool gave students a playground to try ideas during the lecture to explore variations of examples presented during class and allowed the presenter to give students to control of the shared text editor so they could live demo their question “Hey, what about this snippet of code”.",
        slug: "letscode",
        tech: ["Elixir", "Phoenix", "Docker"],
        infra: ["Digital Ocean"],
        primary_image: "/images/portfolio/letscode/letscode_welcome.png",
        other_images: [
          "/images/portfolio/letscode/letscode_editor.png",
          "/images/portfolio/letscode/letscode_elixir.png"
        ],
        subtitle: "A shared editor to help teach programming languages"
      },
      %{
        status: "active",
        date: "2010-09-21",
        title: "Umple",
        details:
          "Built as part of my PhD (2006-2010), Umple continues to be used in academia\nas an teaching aide allowing developers to embed modelling concepts (e.g. UML associations, state machines), patterns, generation templates, and other abstractions in traditional code, and vice versa. \n\nOur focus is two fold: high quality code AND enhancing (not replacing)\nexisting programming languages.\n\nWe strive to generate high quality code that *can be read and reasonabled about*, supporting Java, C++, PhP and Python.  Umple can also generate\nseveral types of diagrams, generate metrics and generate other artifacts.\n\nUmple can also be embedded directly in those programming languages without the\nneed to completely re-write your application.  It becomes an extension much\nlike using tools like Tailwind or Typescript where Umple compiles down alongside\nyour application into the native runtime language.",
        repos: ["https://github.com/umple/umple"],
        summary:
          "A programming language (and suite of tools) that supports modeling concepts like associations and statemachines.",
        slug: "umple",
        tech: ["Java", "Eclipse", "IBM RSX", "PHP", "C++"],
        infra: ["Jenkins", "Ubuntu"],
        primary_image: "/images/portfolio/umple/umple_online.png",
        other_images: [
          "/images/portfolio/umple/test_summary.png",
          "/images/portfolio/umple/umple_design_in_umple.png",
          "/images/portfolio/umple/umple_grammar.png"
        ],
        subtitle: "A model oriented programming language"
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
      {k, v} -> {k, v}
    end)
    |> Enum.into(%{})
    |> then(fn data -> {String.to_atom(data.slug), data} end)
  end
end
