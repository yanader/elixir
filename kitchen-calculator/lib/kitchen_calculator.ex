defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:cup, volume} = _volume_pair) do
    {:milliliter, 240 * volume}
  end

  def to_milliliter({:fluid_ounce, volume} = _volume_pair) do
    {:milliliter, 30 * volume}
  end

  def to_milliliter({:teaspoon, volume} = _volume_pair) do
    {:milliliter, 5 * volume}
  end

  def to_milliliter({:tablespoon, volume} = _volume_pair) do
    {:milliliter, 15 * volume}
  end

  def to_milliliter({:milliliter, volume} = _volume_pair) do
    {:milliliter, volume}
  end

  def from_milliliter(volume_pair, :cup = _unit) do
    {_, mils} = to_milliliter(volume_pair)
    {:cup, mils / 240}
  end

  def from_milliliter(volume_pair, :fluid_ounce = _unit) do
    {_, mils} = to_milliliter(volume_pair)
    {:fluid_ounce, mils / 30}
  end

  def from_milliliter(volume_pair, :teaspoon = _unit) do
    {_, mils} = to_milliliter(volume_pair)
    {:teaspoon, mils / 5}
  end

  def from_milliliter(volume_pair, :tablespoon = _unit) do
    {_, mils} = to_milliliter(volume_pair)
    {:tablespoon, mils / 15}
  end

  def from_milliliter(volume_pair, :milliliter = _unit) do
    {_, mils} = to_milliliter(volume_pair)
    {:milliliter, mils}
  end

  def convert(volume_pair, :cup = _unit) do
    mils = to_milliliter(volume_pair)
    from_milliliter(mils, :cup)
  end

  def convert(volume_pair, :fluid_ounce = _unit) do
    mils = to_milliliter(volume_pair)
    from_milliliter(mils, :fluid_ounce)
  end

  def convert(volume_pair, :teaspoon = _unit) do
    mils = to_milliliter(volume_pair)
    from_milliliter(mils, :teaspoon)
  end

  def convert(volume_pair, :tablespoon = _unit) do
    mils = to_milliliter(volume_pair)
    from_milliliter(mils, :tablespoon)
  end

  def convert(volume_pair, :milliliter = _unit) do
    mils = to_milliliter(volume_pair)
    from_milliliter(mils, :milliliter)
  end
end
