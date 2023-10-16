defmodule ExMoexWeb.DurationsController do
  use ExMoexWeb, :controller

  alias ExMoex.MOEX.Durations

  def index(conn, _params) do
    durations = Durations.list_durations()

    render(conn, "index.html", durations: durations)
  end
end
