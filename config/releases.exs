import Config

config :logger, level: System.get_env("LOG_LEVEL", "info") |> String.to_atom()

config :whos_in_bot,
       WhosInBot.Repo,
       url: System.get_env("DATABASE_URL"),
       ssl: System.get_env("DB_SSL", "false") |> String.to_existing_atom(),
       pool_size: System.get_env("DB_POOL_SIZE", "18") |> String.to_integer()

config :nadia, token: System.fetch_env!("BOT_TOKEN")

config :whos_in_bot, port: System.get_env("PORT", "8080") |> String.to_integer()
