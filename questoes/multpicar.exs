# `spawn` retorna um pid (process identifier), você pode usar esse pid para enviar
# mensagens ao processo. Para envio de mensagens usamos o operador `send`.
# Para tudo isso ser útil precisamos estar aptos a receber mensagens. Isto é
# realizado com o mecanismo `receive`:
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

# Compile o módulo e crie um processo que avalie `area_loop` no shell
pid = spawn(fn -> Geometry.area_loop() end) #=> #PID<0.40.0>

# Envia uma mensagem ao `pid` correspondente a um pattern na declaração de recebimento
send pid, {:rectangle, 2, 3}
#=> Area = 6
#   {:rectangle,2,3}

send pid, {:circle, 2}
#=> Area = 12.56000000000000049738
#   {:circle,2}