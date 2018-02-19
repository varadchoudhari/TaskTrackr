defmodule Tasktracker.Repo.Migrations.AssignedTo do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :assigned_to, references(:users, on_delete: :nothing)
      add :time_taken, :string
  end
end
end
