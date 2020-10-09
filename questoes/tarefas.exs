defmodule Example do
  def double(x) do
    IO.puts("antes do 2000")
    :timer.sleep(2000)
    IO.puts("depois do 2000")
     IO.puts(x * 2)
  end
end

array1 = [1,2,3,4]
array2 = [7,8,9,10]
array3 = []
IO.puts(Enum.at(array1, 2))

defmodule TarefaMultpilcarVetor do
  def calcular(array1,array2,array3) do
  
    IO.puts(Enum.at(array1, 2))
    IO.puts(Enum.at(array2, 2))
    IO.puts(Enum.at(array3, 2))
  end
end


task = Task.async(Example, :calcular, array1,array2,array3)

Task.await(task)

