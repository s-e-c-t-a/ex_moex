defmodule ExMoex.MOEX.SecurityTypes do
  alias ExMoex.MOEX.SecurityType
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = SecurityType.changeset(%SecurityType{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
