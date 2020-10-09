defmodule Ordenacao do
  def minhaLista(lista) do
    IO.inspect Enum.sort(lista), label: "A lista ordenada = "
  end
end

spawn(Ordenacao, :minhaLista, [[9,2,1,3]])
