defmodule SsShare.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://postgres:123456@127.0.0.1/hello"
  end

  def priv do
    app_dir(:ss_share, "priv/repo")
  end
end