defmodule LanguageList do
  def new(), do: []

  def add(list, language) do
    [language | list]
  end

  def remove([head | tail] = _list), do: tail

  def first([head | _tail] = _list), do: head

  def count(list), do: Enum.count(list)

  def functional_list?(list), do: Enum.find(list, & &1 == "Elixir")
end
