defmodule ExMoex.MOEX.Index do
  require Logger
  def get do
    url = "https://iss.moex.com/iss/index.json"

    data = with {:ok, response} <- HTTPoison.get(url),
        {:ok, data} <- Jason.decode(response.body) do

      data
    else
    error ->
      Logger.error("#{__MODULE__}: #{inspect(error)}")
      :error
    end

    data
  end

  def import do
    data = ExMoex.MOEX.Index.get

    ExMoex.MOEX.Engines.import(data["engines"])
  end

  def create_tables(data) do
    data
      |> Map.keys()
      |> Enum.map(fn(table_name) ->
        table = "Elixir.MOEX."<>String.capitalize(table_name)
          |> String.to_atom()

        {:ok, _pid} = GlobalTable.create(table)

        {table_name, table} |> IO.inspect(label: ">>>>>>>>>>")

        columns = data[table_name]["columns"] |> Enum.map(fn(column) -> String.to_atom(column) end)
        rows = data[table_name]["data"]
        Enum.map(rows, fn(row) ->
          record = Enum.zip(columns, row) |> Enum.into(%{})

          apply(table, :insert, [record])
        end)
      end)
  end
end
