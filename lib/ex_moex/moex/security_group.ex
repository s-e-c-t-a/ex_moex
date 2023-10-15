defmodule ExMoex.MOEX.SecurityGroup do
  @moduledoc """
  MOEX securitygroups
  """
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: false}
  schema "security_groups" do
    field(:name, :string)
    field(:title, :string)
    field(:is_hidden, :integer)
  end

  @fields [:id, :name, :title, :is_hidden]

  @doc false
  def changeset(security_group, attrs) do
    security_group
      |> cast(attrs, @fields)
      |> validate_required([:id])
  end
end
