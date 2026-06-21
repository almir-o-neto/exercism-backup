defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    number
    |> to_string()
    |> String.split("", trim: true)
    |> Enum.reverse()
    |> Enum.with_index()
    |> Enum.reduce("", fn {value, index}, acc ->
      value
      |> String.to_integer()
      |> parse(index)
      |> Kernel.<>(acc)
    end)
  end

  defp parse(num, 0) when num < 4, do: String.duplicate("I", num)
  defp parse(num, 0) when num == 4, do: "IV"
  defp parse(num, 0) when num < 9, do: "V" <> String.duplicate("I", num - 5)
  defp parse(num, 0) when num == 9, do: "IX"

  defp parse(num, 1) when num < 4, do: String.duplicate("X", num)
  defp parse(num, 1) when num == 4, do: "XL"
  defp parse(num, 1) when num < 9, do: "L" <> String.duplicate("X", num - 5)
  defp parse(num, 1) when num == 9, do: "XC"

  defp parse(num, 1) when num < 4, do: String.duplicate("X", num)
  defp parse(num, 1) when num == 4, do: "XL"
  defp parse(num, 1) when num < 9, do: "L" <> String.duplicate("X", num - 5)
  defp parse(num, 1) when num == 9, do: "XC"

  defp parse(num, 2) when num < 4, do: String.duplicate("C", num)
  defp parse(num, 2) when num == 4, do: "CD"
  defp parse(num, 2) when num < 9, do: "D" <> String.duplicate("C", num - 5)
  defp parse(num, 2) when num == 9, do: "CM"

  defp parse(num, 3) when num < 4, do: String.duplicate("M", num)
end
