defmodule ExMoex.MOEX.Durations do
  alias ExMoex.MOEX.Duration
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = Duration.changeset(%Duration{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
