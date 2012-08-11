<fib($n) { $n == 0 ?
             0 : 
             $n == 1 ? 
               1 : 
               fib($n - 1) + fib($n - 2) }>

<fac($n) { $n == 0 ?
             1 : 
             $n * fac($n - 1) }>
