defmodule A4word.Markdown do
  def to_html(data) when is_map(data) do
    data
    |> Enum.map(fn {k, v} ->
      {k, to_html(v)}
    end)
    |> Enum.into(%{})
  end

  def to_html(text) when is_binary(text) do
    text
    |> Earmark.as_html!(%Earmark.Options{
      code_class_prefix: "language-",
      smartypants: false
    })
  end
end
