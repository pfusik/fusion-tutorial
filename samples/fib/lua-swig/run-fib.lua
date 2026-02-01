#!/usr/bin/env lua
require("fib")
for i=1,10 do
    print(string.format("Fib %i = %i",i,fib.Fib_fib(i)))
end    
