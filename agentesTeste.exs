{:ok,agent} = Agent.start_link(fn -> [1, 2, 3] end)


Agent.update(agent, fn (state) -> state ++ [4, 5] end)

Agent.get(agent, &(&1))