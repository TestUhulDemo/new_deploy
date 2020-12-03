# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :new_deploy,
  ecto_repos: [NewDeploy.Repo]

# Configures the endpoint
config :new_deploy, NewDeployWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "prA814viTNiHKon05wzblIrNMmny+0ToScsWdCAmHbxnuk0yxA1psVOlNqd/JgP0",
  render_errors: [view: NewDeployWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NewDeploy.PubSub,
  live_view: [signing_salt: "TY5qImlc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
