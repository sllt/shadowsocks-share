defmodule SsShare.Repo.Migrations.InitialUsersCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE users( \
      id serial primary key, \
      smethod varchar(255), \
      host varchar(255), \
      pwd varchar(255), \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE users"
  end
end
