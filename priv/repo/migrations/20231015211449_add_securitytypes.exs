defmodule ExMoex.Repo.Migrations.AddSecuritytypes do
  use Ecto.Migration

  def change do
    create table(:security_types, primary_key: true) do
      add :trade_engine_id, :integer
      add :trade_engine_name, :string
      add :trade_engine_title, :string
      add :security_type_name, :string
      add :security_type_title, :string
      add :security_group_name, :string
      add :stock_type, :string
    end

    create unique_index(:security_types, :id)
  end
end
