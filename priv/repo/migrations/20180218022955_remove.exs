defmodule Tasktracker.Repo.Migrations.Remove do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :assigned_to
      remove :time_taken
  end
end
end
