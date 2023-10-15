defmodule ExMoex.MOEX.Boards do
  alias ExMoex.MOEX.Board
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = Board.changeset(%Board{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
