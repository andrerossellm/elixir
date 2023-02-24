defmodule Exercises do
  def reverse(a), do: reverse(a,[])
  def reverse([], acc), do: acc
  def reverse([a|b],acc), do: reverse(b,[a|acc]) #se agrega a la cabeza y se incluye el resto del acc 

  def occurs(lista,num), do: occurs(lista,num,0)
  defp occurs([],_x,num), do: num
  defp occurs([a|rest],x,num) when a==x, do: occurs(rest,x,num+1) 
  defp occurs([_a|rest],x,num), do: occurs(rest,x,num)

  def unique(list), do: unique(list,[])|>reverse()
  defp unique([],result), do: result
  defp unique([a|b],result), do: if a not in result, do: unique(b,[a|result]), else: unique(b,result)
end
