defmodule Gen.Talks do
  def all() do
    [
      %{
        conference: "EMPEX NY",
        pitch:
          "We built a recommender system for our gifting platform using Elixir's new(ish) ML capabilities, namely scholar and NX.  Did I mention this was our team’s first foray into production ML.  Join us as we discuss our journey as we give an outsider-looking-in perspective on Elixir ML.",
        reference: "https://anunknown.dev/articles/empex-2023-machine-learning",
        summary:
          "An introductory talk on [Elixir](https://elixir-lang.org) Machine Learning with a focus on [NX - Numerical Elixir](https://github.com/elixir-nx) and [Scholar](https://github.com/elixir-nx/scholar)\ngiven at [EMPEX NY](https://www.empex.co) in 2023.",
        title: "Recommending Elixir To Build a Recommendation Engine?",
        urls: "[Blog](https://anunknown.dev/articles/empex-2023-machine-learning)",
        year: "2023"
      },
      %{
        conference: "EMPEX NY",
        pitch:
          "LiveView is launched, come learn more about the return to server side programming being used to manage client side state.\n\nOriginally announcement back in September 2018 at Elixir Conf (USA 2018), LiveView, the server side framework for delivering rich client interfaces is now open for business.\n\nDespite being very (very) new come learn more about some common user interface features that can be solved with LiveView, and some lessons learned along the way to refactoring away from custom JavaScript and towards LiveView controllers.",
        reference: "https://anunknown.dev/articles/empex-2019-liveview",
        summary:
          "An introductory talk on [Elixir](https://elixir-lang.org) / [Phoenix](https://phoenixframework.org) and (at the time) newly released [LiveView](https://github.com/phoenixframework/phoenix_live_view)\ngiven at [EMPEX NY](https://www.empex.co) in 2019.  **LiveView has changed considerable since\nit was first introduced and many approaches are now obsolete**.",
        title: "LiveView - Rich Client Side Experience Delivered from the Server",
        urls:
          "[Video](https://www.youtube.com/watch?v=KvvkWiECvjY)\n[Blog](https://anunknown.dev/articles/empex-2019-liveview)",
        year: "2019"
      }
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
