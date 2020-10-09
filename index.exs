# 1 - guardamos uma referencia ao processo atual
parent = self()
 # 2 - criamos um processo com spawn_link
 spawn_link(
 fn -> send parent, {:msg, "hello world"}
 end)
# 3 - aguardamos receber a resposta e imprimimos no console
 receive do
 {:msg, contents} -> IO.puts contents
 end

# processo 
defmodule Soma do
  def add(a, b) do
    IO.puts("soma eh = #{a + b}")
  end
end

Soma.add(2, 3);

# processo async
spawn(Soma, :add, [2, 3])

# Passagem de mensagem send e receive

defmodule Troca do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen()
  end
end
pid = spawn(Troca, :listen, [])


# se msg passada é igual a msg la de dentro 

send pid, {:ok, "hello"}
send pid, :ok

#novidade
#Vinculando Processos para tratar erros

defmodule Example do
  def explode, do: exit(:kaboom)
end

spawn(Example, :explode, [])
#PID<0.66.0>

spawn_link(Example, :explode, [])

#com interceptar
defmodule Example do
  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Example, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

Example.run
Exit reason: kaboom











