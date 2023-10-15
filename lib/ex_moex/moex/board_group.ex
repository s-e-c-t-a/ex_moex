defmodule ExMoex.MOEX.BoardGroup do
  @moduledoc """
  MOEX boardgroups
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "board_groups" do
    field(:trade_engine_id, :integer)
    field(:trade_engine_name, :string)
    field(:trade_engine_title, :string)
    field(:market_id, :integer)
    field(:market_name, :string)
    field(:name, :string)
    field(:title, :string)
    field(:is_default, :integer)
    field(:board_group_id, :integer)
    field(:is_traded, :integer)
    field(:is_order_driven, :integer)
    field(:category, :string)
  end

  @fields [:id, :trade_engine_id, :trade_engine_name,
  :trade_engine_title, :market_id, :market_name,
  :name, :title, :is_default, :board_group_id,
  :is_traded, :is_order_driven, :category]

  @doc false
  def changeset(board_group, attrs) do
    board_group
      |> cast(attrs, @fields)
      |> validate_required([:id])
  end
end
