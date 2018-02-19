defmodule Tasktracker.Repo.Migrations.Assigned do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :assigned_to, references(:users, on_delete: :nothing)
      add :time_taken, :string
  end
end
end
