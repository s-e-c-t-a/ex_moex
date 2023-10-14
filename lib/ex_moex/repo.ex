defmodule ExMoex.Repo do
  use Ecto.Repo,
    otp_app: :ex_moex,
    adapter: Ecto.Adapters.Postgres
    # adapter: Ecto.Adapters.Mnesia
end
