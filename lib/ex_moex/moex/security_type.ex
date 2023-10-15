defmodule ExMoex.MOEX.SecurityType do
  @moduledoc """
  MOEX securitytypes
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "security_types" do
    field(:trade_engine_id, :integer)
    field(:trade_engine_name, :string)
    field(:trade_engine_title, :string)
    field(:security_type_name, :string)
    field(:security_type_title, :string)
    field(:security_group_name, :string)
    field(:stock_type, :string)
  end

  @fields [:id, :trade_engine_id, :trade_engine_name,
  :trade_engine_title, :security_type_name, :security_type_title,
  :security_group_name, :stock_type]

  @doc false
  def changeset(security_type, attrs) do
    security_type
      |> cast(attrs, @fields)
      |> validate_required([:id])
  end
end
