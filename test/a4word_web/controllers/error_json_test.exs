defmodule A4wordWeb.ErrorJSONTest do
  use A4wordWeb.ConnCase, async: true

  test "renders 404" do
    assert A4wordWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert A4wordWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
