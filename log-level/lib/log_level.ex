defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      legacy? and (level == 0 or level == 5) -> :unknown
      level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) == :error or to_label(level, legacy?) == :fatal -> :ops
      to_label(level, legacy?) == :unknown and legacy? -> :dev1
      to_label(level, legacy?) == :unknown -> :dev2
      true -> false
    end
  end
end