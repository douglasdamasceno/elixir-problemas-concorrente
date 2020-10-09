defmodule Geometria do
  def calcularArea do
    receive do
      {:circulo, r} ->
        IO.puts("Area = #{3.14 * r * r}")
        calcularArea()
    end
  end
end

pid = spawn(fn -> Geometria.calcularArea() end)

send pid, {:circulo, 2}