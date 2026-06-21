defmodule LanguageList do
  def new(), do: []

  def add(list, language) do
    [language | list]
  end

  def remove([_head | tail] = _list), do: tail

  def first([head | _tail] = _list), do: head

  def count([]), do: 0
  def count([_head | tail]), do: count(tail, 1)
  def count([_head | tail], counter), do: count(tail, counter + 1)
  def count([], counter), do: counter

  def functional_list?(list), do: Enum.find(list, & &1 == "Elixir")
end
