defmodule NewDeploy.Repo do
  use Ecto.Repo,
    otp_app: :new_deploy,
    adapter: Ecto.Adapters.Postgres
end
