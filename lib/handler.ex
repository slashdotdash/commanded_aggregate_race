defmodule AccountHandler do
  @behaviour Commanded.Commands.Handler

  def handle(%Account{} = aggregate, %CreateAccount{} = command) do

    Account.execute(aggregate, command)
  end

  def handle(%Account{} = aggregate, %DeleteAccount{account_id: account_id} = command) do

    case Thirdpart.Registry.disconnect_account(account_id) do
      :ok -> Account.execute(aggregate, command)
      _ -> nil
    end
  end

  def handle(%Account{} = aggregate, command) do
    Account.execute(aggregate, command)
  end
end
