defmodule FizzbuzzCond do
  def node(n) do
    cond do
      Integer.mod(n, 15) == 0 -> "FizzBuzz"
      Integer.mod(n, 3) == 0 -> "Fizz"
      Integer.mod(n, 5) == 0 -> "Buzz"
      true -> n
    end
  end
end

1..15 |> Enum.each(& (FizzbuzzCond.node(&1) |> IO.puts))
