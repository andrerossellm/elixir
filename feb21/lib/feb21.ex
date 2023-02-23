defmodule Feb21 do
  def reverse([], acc) do
    acc
  end

  def reverse([a|b],acc) do
    reverse(b,[a|acc]) #se agrega a la cabeza y se incluye el resto del acc 
  end

  def eliminapar([],acc) do: acc
  def eliminapar([a|b],acc) when rem(a,2)==1, do: eliminapar(b, acc++[a])
  def eliminapar([_a,b],acc), do: eliminapar(b,acc)
end
