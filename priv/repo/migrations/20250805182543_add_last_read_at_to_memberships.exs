defmodule Slax.Repo.Migrations.AddLastReadAtToMemberships do
  use Ecto.Migration

  def change do
    alter table(:room_membership) do
      add :last_read_at, :utc_datetime
    end
  end
end
