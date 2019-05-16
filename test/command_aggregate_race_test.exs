defmodule CommandAggregateRaceTest do
  use ExUnit.Case
  doctest CommandAggregateRace

  test "greets the world" do
    assert CommandAggregateRace.hello() == :world
  end
end
