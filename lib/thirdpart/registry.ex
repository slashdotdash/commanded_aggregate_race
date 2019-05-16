defmodule Thirdpart.Registry do
  @moduledoc false
  use GenServer

  require Logger

  def start_link do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def init(_state) do
    Process.flag(:trap_exit, true)
    {:ok, %{}}
  end

  def disconnect_account(account_id) do
    GenServer.call(self(), {:disconnect_account, account_id})
  end

  def handle_call({:disconnect_account, account_id}, _from, state) do
    Process.send_after(self(), {:disconnect, account_id}, 10)

    {:reply, :ok, state}
  end

  def handle_info({:disconnect, account_id}, state) do
    %NotifyAccountDisconnected{account_id: account_id} |> ExampleRouter.dispatch
    {:noreply, state}
  end
end

