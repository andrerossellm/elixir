defmodule Bowling do
  def score([]), do: 0 #caso base
  def score([[10,nil|_c]|rest]) do
    #double lookahead
    [[c,d|_]|_]=rest
    10+c+d+score(rest)
  end
  def score([[a,b|_c]|rest]) when a+ b == 10, do: 10 + hd(hd(rest)) + score(rest) #spare
  def score([[a,b|_c]|rest]), do: a+ b + score(rest)
end
