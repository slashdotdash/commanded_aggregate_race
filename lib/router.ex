defmodule ExampleRouter do
  use Commanded.Commands.Router

  dispatch [
    CreateAccount,
    NotifyAccountDisconnected,
    DeleteAccount
  ],
    to: AccountHandler,
    lifespan: AccountLifespan,
    aggregate: Account,
    identity: :account_id

end
