defmodule Feb17 do
  def suma([]), do: 0
  def suma([a|b]), do: a+ suma(b)

  def multi([]), do: 1
  def multi([a|b]), do: a* multi(b)
  
  def count([]), do: 0
  def count([_a|b]), do: 1+ count(b)
end
