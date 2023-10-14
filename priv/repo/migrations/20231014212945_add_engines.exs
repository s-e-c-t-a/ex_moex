defmodule ExMoex.Repo.Migrations.AddEngines do
  use Ecto.Migration

  def change do
    create table(:engines, primary_key: true) do
      add :name, :string
      add :title, :string
    end

    create unique_index(:engines, :id)
  end
end
