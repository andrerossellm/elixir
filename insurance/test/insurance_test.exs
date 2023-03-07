defmodule InsuranceTest do
  use ExUnit.Case
  doctest Insurance

  test "greets the world" do
    assert Insurance.hello() == :world
  end
end
