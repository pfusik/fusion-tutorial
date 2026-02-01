#!/usr/bin/env tclsh
load ./fib[info sharedlibextension] Fib; 
foreach x [list 1 2 3 4 5] { 
    puts "fin of $x is: [Fib_fib $x]"
}

