#!/usr/bin/env lua
local Fib = require("fib")
Fib.Fib.main()
for i=0,5 do
    print(string.format("Fib %i = %i",i,Fib.Fib.fib(nil,i)))
end
          

