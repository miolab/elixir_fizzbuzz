defmodule FizzbuzzCond do
  def node(n) do
    cond do
      rem(n, 15) == 0 -> "FizzBuzz"
      rem(n, 3) == 0 -> "Fizz"
      rem(n, 5) == 0 -> "Buzz"
      :else -> n
    end
  end
end

for n <- 1..15, do: IO.puts FizzbuzzCond.node(n)
