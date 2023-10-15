defmodule ExMoex.Repo.Migrations.AddSecuritygroups do
  use Ecto.Migration

  def change do
    create table(:security_groups, primary_key: true) do
      add :name, :string
      add :title, :string
      add :is_hidden, :integer
    end

    create unique_index(:security_groups, :id)
  end
end
