defmodule Feb28 do
  def suma([], acc), do: acc
  def suma([a|b], acc), do: suma(b,acc+a)

  def multuplica([],acc), do: acc
  def multiplica([a|b],acc), do: multiplica(b, a*acc)

  #foldl
  def foldl([],acc,_f), do: acc
  def foldl([a|b],acc,f), do: foldl(b,f.(a,acc),f)

  #map
  def map([],_f), do: []
  def map([h|t],f), do: [f.(h)|map(t,f)]

  #filter
  def filter([],_f), do: []
  def filter([h|t],f) do
    case f.(h) do
      true->[h|filter(t,f)]
        _->filter(t,f)
    end
  end
end
