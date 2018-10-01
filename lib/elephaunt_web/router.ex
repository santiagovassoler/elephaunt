defmodule ElephauntWeb.Router do
  use ElephauntWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", ElephauntWeb do
    pipe_through(:api)
  end
end
