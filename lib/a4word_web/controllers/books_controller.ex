defmodule A4wordWeb.BooksController do
  use A4wordWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:books, Gen.Books.all())
    |> render(:index)
  end
end
