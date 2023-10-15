defmodule ExMoex.MOEX.SecurityGroups do
  alias ExMoex.MOEX.SecurityGroup
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = SecurityGroup.changeset(%SecurityGroup{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
