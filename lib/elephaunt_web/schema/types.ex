defmodule ElephauntWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias ElephauntWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.Sessiontype)
end
