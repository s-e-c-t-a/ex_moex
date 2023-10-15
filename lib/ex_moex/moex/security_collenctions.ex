defmodule ExMoex.MOEX.SecurityCollections do
  alias ExMoex.MOEX.SecurityCollection
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = SecurityCollection.changeset(%SecurityCollection{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
