defmodule TwelveDays do
  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
    {position, phrase} = position_and_phrase(number)
    "On the #{position} day of Christmas my true love gave to me: #{phrase}"
  end

  def position_and_phrase(1), do: {"first", "a Partridge in a Pear Tree."}
  def position_and_phrase(2), do: {"second", "two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(3), do: {"third", "three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(4), do: {"fourth", "four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(5), do: {"fifth", "five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(6), do: {"sixth", "six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(7), do: {"seventh", "seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(8), do: {"eighth", "eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(9), do: {"ninth", "nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(10), do: { "tenth", "ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(11), do: { "eleventh", "eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}
  def position_and_phrase(12), do: { "twelfth", "twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree."}


  @doc """
  Given a `starting_verse` and an `ending_verse`, return the verses for each
  included day, one per line.
  """
  @spec verses(starting_verse :: integer, ending_verse :: integer) :: String.t()
  def verses(starting_verse, ending_verse) do
    Enum.map(starting_verse..ending_verse, & verse(&1))
    |> Enum.join("\n")
  end

  @doc """
  Sing all 12 verses, in order, one verse per line.
  """
  @spec sing() :: String.t()
  def sing do
    verses(1,12)
  end
end
