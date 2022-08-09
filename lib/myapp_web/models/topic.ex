defmodule Myapp.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field(:title, :string)
    belongs_to :user, Myapp.User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
