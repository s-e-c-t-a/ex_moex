defmodule ExMoexWeb.PageController do
  use ExMoexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
