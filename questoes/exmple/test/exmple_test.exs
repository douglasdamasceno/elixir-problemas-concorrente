defmodule ExmpleTest do
  use ExUnit.Case
  doctest Exmple

  test "greets the world" do
    assert Exmple.hello() == :world
  end
end
