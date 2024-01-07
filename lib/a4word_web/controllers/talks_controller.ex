defmodule A4wordWeb.TalksController do
  use A4wordWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:talks, Gen.Talks.all())
    |> render(:index)
  end
end
