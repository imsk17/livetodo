defmodule Livetodos.Repo do
  use Ecto.Repo,
    otp_app: :livetodos,
    adapter: Ecto.Adapters.Postgres
end
