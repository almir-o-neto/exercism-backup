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
      ?G -> ?C
      ?C -> ?G
      ?T -> ?A
      ?A -> ?U

    end

  end
end
