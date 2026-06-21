defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost)
  def eat_ghost?(true, true), do: true
  def eat_ghost?(_, _), do: false

  def score?(touching_power_pellet, touching_dot)
  def score?(false, false), do: false
  def score?(_, _), do: true

  def lose?(power_pellet_active, touching_ghost)
  def lose?(false, true), do: true
  def lose?(_, _), do: false

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost)
  def win?(true, false, true), do: false
  def win?(true, _, _), do: true
  def win?(_, _, _), do: false
end
