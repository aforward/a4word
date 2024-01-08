defmodule A4wordWeb.Helper do
  def to_friendly(datetime) do
    datetime
    |> Date.from_iso8601()
    |> case do
      {:ok, d} ->
        case d.month do
          1 -> "January #{d.day}, #{d.year}"
          2 -> "February #{d.day}, #{d.year}"
          3 -> "March #{d.day}, #{d.year}"
          4 -> "April #{d.day}, #{d.year}"
          5 -> "May #{d.day}, #{d.year}"
          6 -> "June #{d.day}, #{d.year}"
          7 -> "July #{d.day}, #{d.year}"
          8 -> "August #{d.day}, #{d.year}"
          9 -> "September #{d.day}, #{d.year}"
          10 -> "October #{d.day}, #{d.year}"
          11 -> "November #{d.day}, #{d.year}"
          12 -> "December #{d.day}, #{d.year}"
        end

      _else ->
        d = Date.utc_today()
        "April #{d.day}, #{d.year}"
    end
  end
end
