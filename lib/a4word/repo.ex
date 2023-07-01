defmodule A4word.Repo do
  use Ecto.Repo,
    otp_app: :a4word,
    adapter: Ecto.Adapters.Postgres
end
