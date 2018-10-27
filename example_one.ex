# Gets message and prints "Bonjour" to the console. No response, nothing.
defmodule ExampleOne do
  def run() do
    receive do
      _ -> IO.puts("Bonjour")
    end
  end
end
