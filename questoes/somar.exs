soma10 = fn(x) -> x+10 end
soma10.(20)

multiplica = fn x,y-> x*y end

lista = [1,2,3,4,5]
a =Enum.map(lista,multiplica(1))
IO.puts(a)
