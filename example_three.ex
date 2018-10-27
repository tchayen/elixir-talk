# Implements counter using actors, message passing and pattern matching.
defmodule ExampleThree do
  def run() do
    receive do
      {sender, 0} ->
        send(sender, {:stop, 0})

      {sender, number} when is_integer(number) ->
        send(sender, {:ok, number - 1})
        run()
    end
  end
end

# # This part goes to the console
# receive do
#   {:stop, _} ->
#     IO.puts("Ok, that's all")
#   {:ok, number} when is_integer(number) ->
#     IO.puts("#{number}")
# end
