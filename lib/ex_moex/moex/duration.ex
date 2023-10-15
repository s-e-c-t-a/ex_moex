defmodule ExMoex.MOEX.Duration do
  @moduledoc """
  MOEX durations
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:interval, :integer, autogenerate: false}
  schema "durations" do
    # field(:interval, :integer)
    field(:duration, :integer)
    field(:days, :integer)
    field(:title, :string)
    field(:hint, :string)
  end

  @fields [:interval, :duration, :days, :title, :hint]
  @doc false
  def changeset(duration, attrs) do
    duration
      |> cast(attrs, @fields)
      |> validate_required([:interval, :duration, :title, :hint])
  end
end
