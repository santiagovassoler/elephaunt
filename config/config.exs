# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elephaunt, ecto_repos: [Elephaunt.Repo]

# Configures the endpoint
config :elephaunt, ElephauntWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OoEhCKwlGfATQYDSjpAgqSt6FvEGODNVkLtXjG8fV+AKndUzweGXBnX17mgmMba3",
  render_errors: [view: ElephauntWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Elephaunt.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

  # Guardian config details
config :elephaunt, Elephaunt.Guardian,
  issuer: "elephaunt",
  secret_key: "/oI+kgkwd1CDP1xqPANcIWEl3frK/C0iOpsFpl2/+4aZ6QH2e+0lGtN4W9M21Aog"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
