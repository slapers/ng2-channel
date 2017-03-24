# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ng2_channel,
  namespace: NgChannel

# Configures the endpoint
config :ng2_channel, NgChannel.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kQ/BM+4MJ4vvNtTZ9imVnK2nzAsMPRueMVbSEHPPO+8Tm2923T0xmYTB5jI3nw4+",
  render_errors: [view: NgChannel.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NgChannel.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
