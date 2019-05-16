defmodule AccountLifespan do
  @behaviour Commanded.Aggregates.AggregateLifespan

  def after_event(%AccountDeleted{}), do: :stop
  def after_event(_event), do: :timer.minutes(5)

  def after_command(_command), do: :infinity

  def after_error(_error), do: :stop
end
