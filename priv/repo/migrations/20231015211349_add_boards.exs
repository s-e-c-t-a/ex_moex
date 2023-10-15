defmodule ExMoex.Repo.Migrations.AddBoards do
  use Ecto.Migration

  def change do
    create table(:boards, primary_key: true) do
      add :board_group_id, :integer
      add :engine_id, :integer
      add :market_id, :integer
      add :boardid, :string
      add :board_title, :string
      add :is_traded, :integer
      add :has_candles, :integer
      add :is_primary, :integer
    end

    create unique_index(:boards, :id)
  end
end
