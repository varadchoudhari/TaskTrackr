defmodule Tasktracker.Repo.Migrations.Addtime do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :time_taken, :integer
    end
  end
end
