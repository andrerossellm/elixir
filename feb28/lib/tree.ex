defmodule Tree do
    def insert(nil, value), do: {value,nil,nil} 
    def insert({v,left,right}, value) when value<v, do: {v,insert(left,value),right}
    def insert({v,left,right}, value), do: {v,left,insert(right,value)}

    
    def traverse(nil), do: nil
    def traverse({v,left,right}) do
        traverse(left)
        IO.puts(v)
        traverse(right)
    end

end