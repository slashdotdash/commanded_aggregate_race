# CommandAggregateRace

**TODO: Add description**

## Installation

```
$ docker-compose up -d && mix do deps.get, event_store.create, event_store.init && iex -S mix run
Erlang/OTP 21 [erts-10.3.4] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe] [dtrace]


15:55:37.481 [debug] Attempting to start Postgrex

15:55:37.528 [debug] Successfully started Postgrex (#PID<0.230.0>)

15:55:37.575 [debug] Attempting to start Postgrex.Notifications

15:55:37.591 [debug] Successfully started Postgrex.Notifications (#PID<0.240.0>)

15:55:37.591 [debug] Attempting to start Postgrex

15:55:37.591 [debug] Successfully started Postgrex (#PID<0.242.0>)
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> %CreateAccount{account_id: "1"} |> ExampleRouter.dispatch
iex(2)> %DeleteAccount{account_id: "1"} |> ExampleRouter.dispatch

```
