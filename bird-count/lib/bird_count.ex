defmodule BirdCount do
  def today(list) do
    cond do
      list == [] -> nil
      true -> hd(list)
    end
  end

  def increment_day_count(list) do
    cond do
      list == [] -> [1]
      true -> [hd(list) + 1 | tl(list)]
    end
  end

  def has_day_without_birds?(list) do
    0 in list
  end

  def total(list) do
    cond do
      list == [] -> 0
      true -> hd(list) + total(tl(list))
    end
  end

  def busy_days(list) do
    cond do
      list == [] -> 0
      hd(list) >= 5 -> 1 + busy_days(tl(list))
      true -> 0 + busy_days(tl(list))
    end
  end
end
