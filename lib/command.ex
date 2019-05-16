defmodule CreateAccount do
  @derive Jason.Encoder
  defstruct [:account_id]
end

defmodule NotifyAccountDisconnected do
  @derive Jason.Encoder
  defstruct [:account_id]
end

defmodule DeleteAccount do
  @derive Jason.Encoder
  defstruct [:account_id]
end
