defmodule ExercisesTest do
  use ExUnit.Case
  @tag :skip
  test "occurs: counts the number of occurrences of an element in a list" do
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 11) == 1
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 7) == 2
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 5) == 2
    assert Exercises.occurs([2,3,5,7,11,13,7,5], 99) == 0
  end

  test "pack: Packs adjacent duplicate elements from list into sublists" do
  assert Exercises.pack(~w(a a a a b c c a a d e e e e)) ==
      [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"], ["d"], ["e", "e", "e", "e"]]
  assert Exercises.pack([1, 1, 1, 5, 5, 1, 1, 3, 2, 2, 2]) ==
      [[1, 1, 1], [5, 5], [1, 1], [3], [2, 2, 2]]
  end

  test "unique: should work with list of numbers" do
    assert Exercises.unique([2,2,2,1,2,2,5,5,5,5,7,7]) == [2,1,5,7]
    assert Exercises.unique([1,2,2,2,2,2,5,5,5,5,7,7]) == [1,2,5,7]
    assert Exercises.unique([1,2,2,1,2,2,2,5,5,5,5,7,7]) == [1,2,5,7]
  end

  test "drop: Drops every N'th element from a list" do
  assert Exercises.drop([1,2,3,4,5,6,7,8,9,10], 3) == [1,2,4,5,7,8,10]
  assert Exercises.drop([1,2,3,4,5,6,7,8,9,10], 4) == [1,2,3,5,6,7,9,10]
  end

  @tag :skip
  test "split: Splits a list into two parts; the length of the first part is given" do
  assert Exercises.split([1,2,3,4,5,6,7,8,9,10], 3) == [[1,2,3],[4,5,6,7,8,9,10]]
  assert Exercises.split([10,52,3,4,5,6,7,8,9,1], 6) == [[10,52,3,4,5],[6,7,8,9,1]] 
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
