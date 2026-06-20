defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(fn elem -> transform_rna(elem) end)
  end

  def transform_rna(byte_char) do
    case byte_char do
      71 -> 67
      67 -> 71
      84 -> 65
      65 -> 85

    end

  end
end
