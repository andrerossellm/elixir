defmodule Bowling do
  def score([]), do: 0 #caso base
  def score([[a,b,c]|_]), do: a+b+c
  def score([[10,nil|_c]| [[c,d|_]|_]= rest]), do: 10+c+d+score(rest) #strike
  def score([[a,b|_c]|rest]) when a+ b == 10, do: 10 + hd(hd(rest)) + score(rest) #spare
  def score([[a,b|_c]|rest]), do: a+ b + score(rest)
end
