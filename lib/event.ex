defmodule AccountCreated do
  @derive Jason.Encoder
  defstruct [:account_id]
end

defmodule AccountDisconnected do
  @derive Jason.Encoder
  defstruct [:account_id]
end

defmodule AccountDeleted do
  @derive Jason.Encoder
  defstruct [:account_id]
end
