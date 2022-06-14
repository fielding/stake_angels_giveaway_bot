use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# config :whos_in_bot,
#        WhosInBot.Repo,
      # #  username: System.get_env("DB_USER", "postgres"),
      # #  password: System.get_env("DB_PASSWORD", "postgres"),
      # #  database: System.get_env("DB_NAME", "whos_in_bot"),
      # #  hostname: System.get_env("DB_HOST", "localhost"),
      #  port: System.get_env("DB_PORT", "5432") |> String.to_integer(),
      #  ssl: System.get_env("DB_SSL", "false") |> String.to_existing_atom()
      #  pool_size: 18

if File.exists?("dev.secret.exs") do
  import_config "dev.secret.exs"
end
