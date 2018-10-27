# Can actually receive more than one message.
defmodule ExampleTwo do
  def run() do
    receive do
      _ ->
        IO.puts("Bonjour")
        run()
    end
  end
end
