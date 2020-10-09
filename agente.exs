defmodule Example do
  def add(a, b) do
    IO.puts(a + b)
  end
end

Example.add(2, 3)

spawn(Example, :add, [2, 3])


defmodule Example2 do
  def listen do
    receive do
      var -> IO.puts("World #{var}")
    end
  end
end

pid = spawn(Example2, :listen, [])
#PID<0.108.0>
var = [12,34,3]

send pid, var
