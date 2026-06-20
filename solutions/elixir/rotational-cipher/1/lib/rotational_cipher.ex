defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |>String.replace(~r/[a-zA-Z]/,fn <<char>> ->
      shift_char(char,shift)
    end)
  end

  defp shift_char(char, shift) when (char + shift > ?z) do
    rest = (char + shift) - ?z
    96 + rest
  end

  defp shift_char(char, shift) when char + shift > ?Z and char <= ?Z do
    rest = (char + shift) - ?Z
    64 + rest
  end

  defp shift_char(char, shift) do
    if char == 32 do
      char
    else
      char + shift
    end
  end

end
