array1 = [1,2,3,4]
array2 = [7,8,9,10]
array3 = []
IO.puts(array1)
IO.puts(array2)
IO.puts(array3)

{:ok, agent} = Agent.start_link(fn -> [1, 2, 3] end)


Agent.update(agent, fn (state) -> state ++ [4, 5] end)

Agent.get(agent, &(&1))