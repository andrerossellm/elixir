defmodule ExercisesTest do
  use ExUnit.Case
  test "occurs: counts the number of occurrences of an element in a list" do
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 11) == 1
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 7) == 2
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 5) == 2
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 99) == 0
  end

  test "unique: should work with list of numbers" do
    assert Exercises.unique([2,2,2,1,2,2,5,5,5,5,7,7]) == [2,1,5,7]
    assert Exercises.unique([1,2,2,2,2,2,5,5,5,5,7,7]) == [1,2,5,7]
    assert Exercises.unique([1,2,2,1,2,2,2,5,5,5,5,7,7]) == [1,2,5,7]
  end

  @tag :skip
  test "unique: should work with list of strings" do
    assert Exercises.unique(~w[a a a a b c c a a d e e e e]) == ["a","b","c","d","e"]
  end

  @tag :skip
  test "unique: should work with charlists" do
    assert Exercises.unique('bccaadeeeeaaaa') == 'bcade'
  end
end
