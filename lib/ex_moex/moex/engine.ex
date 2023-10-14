defmodule ExMoex.MOEX.Engine do
  @moduledoc """
  MOEX engines
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "engines" do
    field(:name, :string)
    field(:title, :string)
  end

  @fields [:id, :name, :title]

  @doc false
  def changeset(engine, attrs) do
    engine
      |> cast(attrs, @fields)
      |> validate_required(@fields)
  end
end
