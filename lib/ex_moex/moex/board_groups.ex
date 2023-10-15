defmodule ExMoex.MOEX.BoardGroups do
  alias ExMoex.MOEX.BoardGroup
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = BoardGroup.changeset(%BoardGroup{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
