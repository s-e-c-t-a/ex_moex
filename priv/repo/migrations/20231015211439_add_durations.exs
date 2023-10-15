defmodule ExMoex.Repo.Migrations.AddDurations do
  use Ecto.Migration

  def change do
    create table(:durations, primary_key: false) do
      add :interval, :integer, primary_key: true
      add :duration, :integer
      add :days, :integer
      add :title, :string
      add :hint, :string
    end
  end
end
