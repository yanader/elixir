defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    apply_discount(daily_rate(hourly_rate), discount) * 22
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / apply_discount(daily_rate(hourly_rate), discount)
  end
end
