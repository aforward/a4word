defmodule A4wordWeb.PublicationsController do
  use A4wordWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:publications, Gen.Publications.all())
    |> render(:index)
  end
end
