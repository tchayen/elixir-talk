# Now let's check how fast are those processes.
defmodule ExampleFour do
  def run(n) do
    :timer.tc(ExampleFour, :start_counting, [n]) |> IO.inspect
  end

  def start_counting(n) do
    1..n
    |> Enum.reduce(
      self(),
      fn (_, send_to) -> spawn(ExampleFour, :counter, [send_to]) end
    )
    |> send(0)

    receive do
      n when is_integer(n) -> "We have #{n} processes"
    end
  end

  def counter(pid) do
    receive do
      n -> send(pid, n + 1)
    end
  end
end

# elixir -r example_four.ex -e "ExampleFour.run(10)"
# elixir --erl "+P 1000000" -r example_four.ex -e "ExampleFour.run(1000000)"
