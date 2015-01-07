defmodule SsShare.Endpoint do
  use Phoenix.Endpoint, otp_app: :ss_share

  plug Plug.Static,
    at: "/", from: :ss_share

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_ss_share_key",
    signing_salt: "MBirGnXY",
    encryption_salt: "iQ+06BcG"

  plug :router, SsShare.Router
end
