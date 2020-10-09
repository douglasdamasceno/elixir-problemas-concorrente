defmodule Tarefa do
  def double(x) do
    IO.puts("antes do 2000")
    :timer.sleep(2000)
    IO.puts("depois do 2000")
    x * 2
  end
end


task = Task.async(Tarefa, :double, [2000])

Task.await(task)
