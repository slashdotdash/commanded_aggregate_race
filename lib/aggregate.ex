defmodule Account do
  defstruct [:account_id, :status]

  # public command API

  def execute(%Account{account_id: nil}, %CreateAccount{account_id: id}) do
    %AccountCreated{account_id: id}
  end

  def execute(%Account{}, %CreateAccount{account_id: id}) do
    {:error, :already_created}
  end

  def execute(%Account{}, %NotifyAccountDisconnected{account_id: id}) do
    %AccountDisconnected{account_id: id}
  end

  def execute(%Account{}, %DeleteAccount{account_id: id}) do
    %AccountDeleted{account_id: id}
  end

  def apply(%Account{} = account, %AccountCreated{account_id: id}) do
    %{account |
      account_id: id,
      status: :created
    }
  end

  def apply(%Account{} = account, %AccountDisconnected{}) do
    %{account |
      status: :disconnected
    }
  end

  def apply(%Account{} = account, %AccountDeleted{}) do
    %{account |
      status: :deleted
    }
  end
end
