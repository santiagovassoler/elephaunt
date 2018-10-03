defmodule ElephauntWeb.Router do
  use ElephauntWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
    plug(ElephauntWeb.Plugs.Context)
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: ElephauntWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: ElephauntWeb.Schema)
    end
  end
end
