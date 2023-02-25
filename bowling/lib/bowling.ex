defmodule Bowling do
  def score([]), do: 0 #caso base
  def score(['\n\n\n']), do: 30
  def score([[10,nil|_] | [[10|_]|_]= rest]), do: 30+score(rest) #strike after strike
  def score([[10,nil|_] | [[c,d|_]|_]= rest]), do: 10+c+d+score(rest) #strike
  def score([[a,b|_c]|rest]) when a+ b == 10, do: 10 + hd(hd(rest)) + score(rest) #spare
  def score([[a,b|_c]|rest]), do: a+ b + score(rest)
end
