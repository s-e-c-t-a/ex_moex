defmodule ExMoex.MOEX.Engines do
  alias ExMoex.MOEX.Engine
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = Engine.changeset(%ExMoex.MOEX.Engine{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
