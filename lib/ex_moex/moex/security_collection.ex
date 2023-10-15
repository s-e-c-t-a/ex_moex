defmodule ExMoex.MOEX.SecurityCollection do
  @moduledoc """
  MOEX securitycollections
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "security_collections" do
    field(:name, :string)
    field(:title, :string)
    field(:security_group_id, :integer)
  end

  @fields [:id, :name, :title, :security_group_id]

  @doc false
  def changeset(security_collection, attrs) do
    security_collection
      |> cast(attrs, @fields)
      |> validate_required([:id])
  end
end
