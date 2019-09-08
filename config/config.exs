# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :theater,
  ecto_repos: [Theater.Repo]

# Configures the endpoint
config :theater, TheaterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e1WCIhJPVxgd/gGKD9ccZesFoecI5Pt64BVN8HeUtWg+tTOBf6zdpKGszRCFRUnx",
  render_errors: [view: TheaterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Theater.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
