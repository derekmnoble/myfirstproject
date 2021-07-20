defmodule MyfirstprojectTest do
  use ExUnit.Case
  doctest Myfirstproject

  test "greets the world" do
    assert Myfirstproject.hello() == :world
  end
end
