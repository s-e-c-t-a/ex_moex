defmodule ExMoex.MOEX.Board do
  @moduledoc """
  MOEX boards
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "boards" do
    field(:board_group_id, :integer)
    field(:engine_id, :integer)
    field(:market_id, :integer)
    field(:boardid, :string)
    field(:board_title, :string)
    field(:is_traded, :integer)
    field(:has_candles, :integer)
    field(:is_primary, :integer)
  end

  @fields [:id, :board_group_id, :engine_id, :market_id,
  :boardid, :board_title, :is_traded, :has_candles, :is_primary]

  @doc false
  def changeset(board, attrs) do
    board
      |> cast(attrs, @fields)
      |> validate_required(@fields)
  end
end
