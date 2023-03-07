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
  defp unique([a|b],result) do
    if a not in result, do: unique(b,[a|result]), 
    else: unique(b,result)
  end

  def split(list,x), do: split(list,x,1,[],[])
  def split([],_x,_count,list,list2), do: [reverse(list),reverse(list2)]
  def split([a|b],x,count,list,list2) when count<x, do: split(b,x,count+1,[a|list],list2)
  def split([a|b],x,count, list,list2), do: split(b,x,count+1,list,[a|list2])

  def drop(list,x), do: drop(list,x,[],1)
  def drop([],_x,acc,_count), do: reverse(acc)
  def drop([a|b],x,acc,count) do
    if rem(count,x)==0, do: drop(b,x,acc,count+1),
    else: drop(b,x,[a|acc],count+1)
  end

  def pack([a|b]), do: pack(b,[[a]]) |> reverse()
  def pack([], acc), do: acc
  def pack([a|b],[c|d]) do
    if a not in c, do: pack(b,[[a],c|d]),
    else: pack(b,[[a|c]|d])
  end
end
