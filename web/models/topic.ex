defmodule Discuss.Topic do
  use Discuss.Web, :model

  # Definição do schema de topicos
  schema "topics" do
    field(:title, :string)
  end

  # Para valor padrao, usar o \\ valor
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
