defmodule ExMoex.Repo.Migrations.AddSecuritycollections do
  use Ecto.Migration

  def change do
    create table(:security_collections, primary_key: true) do
      add :name, :string
      add :title, :string
      add :security_group_id, :integer
    end

    create unique_index(:security_collections, :id)
  end
end
