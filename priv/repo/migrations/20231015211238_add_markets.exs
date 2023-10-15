defmodule ExMoex.Repo.Migrations.AddMarkets do
  use Ecto.Migration

  def change do
    create table(:markets, primary_key: true) do
      add :trade_engine_id, :integer
      add :trade_engine_name, :string
      add :trade_engine_title, :string
      add :market_name, :string
      add :market_title, :string
      add :market_id, :integer
      add :marketplace, :string
      add :is_otc, :integer
      add :has_history_files, :integer
      add :has_history_trades_files, :integer
      add :has_trades, :integer
      add :has_history, :integer
      add :has_candles, :integer
      add :has_orderbook, :integer
      add :has_tradingsession, :integer
      add :has_extra_yields, :integer
      add :has_delay, :integer
    end

    create unique_index(:markets, :id)
  end
end
