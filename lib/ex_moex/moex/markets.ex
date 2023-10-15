defmodule ExMoex.MOEX.Markets do
  alias ExMoex.MOEX.Market
  alias ExMoex.Repo

  def import(data) do
    columns = data["columns"]
    rows = data["data"]
    Enum.map(rows, fn(row) ->
      record = Enum.zip(columns, row) |> Enum.into(%{})
      changeset = Market.changeset(%Market{}, record)
      Repo.insert!(changeset, on_conflict: :nothing)
    end)
  end
end
