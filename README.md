# Are elixirs healthy for actors?

Code shown during the presentation.

## Running

1. Start with:

```bash
iex
```

2. Then for each example you want to load:
```elixir
Code.load_file("example_one.ex")
```

3. And for this example follow with:
```elixir
pid = spawn(ExampleOne, :run, [])
send(pid, :xd)
```

> **NOTE:** _the exact running code might differ between examples, but points 1 and 2 stay the same._

## Questions, troubles?

Ask **@tczajecki**.
