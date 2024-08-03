defmodule Gen.Portfolio do
  @all [
    letscode: %{
      slug: "letscode",
      title: "LetsCode",
      primary_image: "/images/portfolio/letscode/letscode_welcome.png",
      images_grid_size: 1,
      other_images: [
        "/images/portfolio/letscode/letscode_editor.png",
        "/images/portfolio/letscode/letscode_elixir.png"
      ],
      tech: ["Elixir", "Phoenix", "Docker"],
      infra: ["Digital Ocean"],
      status: "active",
      descriptions: [
        """
        An <i>experimental</i> teaching aide for interacting with students while teaching lectures on programming languages.
        The site is no longer live.
        """,
        """
        This tool gave students a playground to try ideas during the lecture to explore variations of examples presented during class and allowed the presenter to give students to control of the shared text editor so they could live demo their question “Hey, what about this snippet of code”.
        """
      ],
      extra_details: []
    }
  ]

  def all(), do: @all
  def project(slug), do: Keyword.get(@all, slug)
end
