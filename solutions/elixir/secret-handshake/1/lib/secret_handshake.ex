defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    wink([], code)
    |>blink(code)
    |>eyes(code)
    |>jump(code)
    |>revert(code)
  end

  def wink(list,code) do
    case Bitwise.&&&(code, 0b1) do
      1 -> list ++ ["wink"]
      _whatever -> list
    end
  end

  def blink(list,code) do
    case Bitwise.&&&(code, 0b10) do
      0b10 -> list ++ ["double blink"]
      _whatever -> list
    end
  end

  def eyes(list,code) do
    case Bitwise.&&&(code, 0b100) do
      0b100 -> list ++ ["close your eyes"]
      _whatever -> list
    end
  end

  def jump(list,code) do
    case Bitwise.&&&(code, 0b1000) do
      0b1000 -> list ++ ["jump"]
      _whatever -> list
    end
  end

  def revert(list,code) do
    case Bitwise.&&&(code, 0b10000) do
      0b10000 -> Enum.reverse(list)
      _whatever -> list
    end
  end

end
