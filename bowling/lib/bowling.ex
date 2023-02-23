defmodule Bowling do
  def score([]), do: 0 #caso base
  def score([frame|rest]) do
    first = hd(frame)
    second = hd(tl(frame))
    first + second + score(rest)
  end
end
