require Integer

defmodule ListFilter do
  def call(list), do: count_odds(list)

  defp count_odds([]), do: 0

  defp count_odds(list) do
    numbers =
      Enum.map(list, fn elem ->
        number = String.replace(elem, ~r/\D/, "0")
        String.to_integer(number)
      end)

    Enum.count(numbers, fn number ->
      Integer.is_odd(number)
    end)
  end
end
