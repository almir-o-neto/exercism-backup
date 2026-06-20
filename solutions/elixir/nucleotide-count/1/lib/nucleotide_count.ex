defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count(charlist(), char()) :: non_neg_integer()
  def count(strand, nucleotide) do
    Enum.count(strand, & &1 == nucleotide)
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram(charlist()) :: map()
  def histogram(strand) do
    list_nucleotide = [?A, ?T, ?C, ?G]

    count_result =
      list_nucleotide
      |> Enum.map(fn nucleotide -> count(strand,nucleotide) end)

    build_answer(list_nucleotide, count_result )
  end

  defp build_answer(list_nucleotide, count_result) do
    Enum.zip(list_nucleotide, count_result)
    |> Map.new()
  end


end
