defmodule EjemplosTest do
  use ExUnit.Case
  doctest Ejemplos

  test "greets the world" do
    assert Ejemplos.hello() == :world
  end
end
