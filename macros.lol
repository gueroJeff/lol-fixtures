<callFib "{{ fib(20) }}">
<fib($n) { $n == 0 ?
             0 : 
             $n == 1 ? 
               1 : 
               fib($n - 1) + fib($n - 2) }>

<callFac "{{ fac(5) }}">
<fac($n) { $n == 0 ?
             1 : 
             $n * fac($n - 1) }>

<zero($n) { 0 }>
<callZeroOrFac "{{ zero(1) || fac(5) }}">
