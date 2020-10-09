defmodule Geometry do
  def area_loop do
    receive do
      {:rectangle, w, h} ->
        IO.puts("Area = #{w * h}")
        area_loop()
      {:circle, r} ->
        IO.puts("Area = #{3.14 * r * r}")
        area_loop()
    end
  end
end
send pid, {:rectangle, 2, 3}

send pid, {:circle, 2, 3}

map = %{:foo => "bar", "hello" => :world}
map[:foo]
mapa = %{1=>"novo",2=>"xxxxxx"}
mapa[1]


tupla = {1,2,4,5}
elem(tupla,1)
tuple_size(tupla)