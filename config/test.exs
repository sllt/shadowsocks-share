use Mix.Config

config :ss_share, SsShare.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
