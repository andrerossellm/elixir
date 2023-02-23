defmodule Bowling do
  def score([]), do: 0 #caso base
  def score([frame|rest]) when hd(frame)+ hd(tl(frame))==10, do: 10 + hd(hd(rest)) + score(rest)
  def score([frame|rest]), do: hd(frame)+ hd(tl(frame))+ score(rest)
  end
