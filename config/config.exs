# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :livetodos,
  ecto_repos: [Livetodos.Repo]

# Configures the endpoint
config :livetodos, LivetodosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X7x4TRnQ0+51slKpN3+Aqw/h/7wXTLWT1E4JJfv7VsDv2IJD6XGzl0hGAn/ydjfS",
  render_errors: [view: LivetodosWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Livetodos.PubSub,
  live_view: [signing_salt: "8tfzs4Cl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
