defmodule Tasktracker.Repo.Migrations.CreateAssigns do
  use Ecto.Migration

  def change do
    create table(:assigns) do
      add :task_id, references(:tasks, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:assigns, [:task_id])
    create index(:assigns, [:user_id])
  end
end
