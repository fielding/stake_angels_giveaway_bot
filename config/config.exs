use Mix.Config

config :nadia, token: (System.get_env("BOT_TOKEN") || "")

config :whos_in_bot, ecto_repos: [WhosInBot.Repo]
config :whos_in_bot, port: 4000

config :whos_in_bot,
      WhosInBot.Repo,
      url: System.get_env("DATABASE_URL"),
      ssl: System.get_env("DB_SSL", "false") |> String.to_existing_atom(),
      pool_size: 18



import_config "#{Mix.env}.exs"
