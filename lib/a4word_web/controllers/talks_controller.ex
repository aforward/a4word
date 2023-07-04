defmodule A4wordWeb.TalksController do
  use A4wordWeb, :controller
  alias A4word.Markdown

  def index(conn, _params) do
    conn
    |> assign(:talks, Gen.Talks.all())
    |> render(:index)
  end
end
