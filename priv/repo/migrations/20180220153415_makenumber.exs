defmodule Tasktracker.Repo.Migrations.Makenumber do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      remove :time_taken
    end
  end
end
