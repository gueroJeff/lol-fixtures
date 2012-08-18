<double($a) { $a + $a }>
<callDouble "{{ double(3) }}">

<zero($n) { 0 }>
<callZero "{{ zero(1) }}">

<isFalsy($n) { !$n ? 'falsy' : 'truthy' }>
<callIsFalsy1 "{{ isFalsy(0) }}">
<callIsFalsy2 "{{ isFalsy('') }}">
<callIsFalsy3 "{{ isFalsy([]) }}">
<callIsFalsy4 "{{ isFalsy({}) }}">
<callIsFalsy5 "{{ isFalsy(1) }}">
<callIsFalsy6 "{{ isFalsy('text') }}">
<callIsFalsy7 "{{ isFalsy(['text']) }}">
<callIsFalsy8 "{{ isFalsy({one: 'text'}) }}">

<isTruthy($n) { $n ? 'truthy' : 'falsy' }>
<callIsTruthy "{{ isTruthy(0) }}">

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

<plural($n) { $n == 1 ? 
                 'one' : 
                 $n % 10 >= 2 && 
                 $n % 10 <= 4 && 
                 ($n % 100 < 10 || $n % 100 >= 20) ? 
                   'few' :
                   'many' }>
<callPlural0 "{{ plural(0) }}">
<callPlural1 "{{ plural(1) }}">
<callPlural2 "{{ plural(2) }}">
<callPlural5 "{{ plural(5) }}">
<callPlural11 "{{ plural(11) }}">
<callPlural22 "{{ plural(22) }}">
<callPlural101 "{{ plural(101) }}">
<callPlural102 "{{ plural(102) }}">
<callPlural111 "{{ plural(111) }}">
<callPlural121 "{{ plural(121) }}">
<callPlural122 "{{ plural(122) }}">

<callZeroOrFac "{{ zero(1) || fac(5) }}">


<quad($a) { double(double($a)) }>
<callQuad "{{ quad(7) }}">

<call($macro, $arg) { $macro($arg) }>
<callCall "{{ call(fac, 5) }}">
<callCallString "{{ call('fac', 5) }}">

<get($entity) { $entity }>
<callGet "{{ get(brandName) }}">
<callGet1 "{{ get(brandName).nominative }}">
<callGet2 "{{ get(brandName).genitive }}">

<getGenitive($entity) { $entity.genitive }>
<callGetGenitive "{{ getGenitive(brandName) }}">



<brandName {
  nominative: "Firefox",
  genitive: "Firefox's"
}>
<getBrandName($null) { brandName }>
<callGetBrandName "{{ getBrandName() }}">

<getBrandNameCase($case) { brandName[$case] }>
<callGetBrandNameCase "{{ getBrandNameCase('genitive') }}">


<brandNameLength {
  short: {
    nominative: "Firefox",
    genitive: "Firefox's"
  },
  long: {
    nominative: "Mozilla Firefox",
    genitive: "Mozilla Firefox's"
  }
}>
<getBrandNameLength($length) { brandNameLength[$length] }>
<callGetBrandNameLength1 "{{ getBrandNameLength('long') }}">
<callGetBrandNameLength2 "{{ getBrandNameLength('long').genitive }}">

<getBrandNameLengthGenitive($length) { brandNameLength[$length].genitive }>
<callGetBrandNameLengthGenitive "{{ getBrandNameLengthGenitive('long') }}">


<brandNameThis {
  short: {
    nominative: "Firefox",
    genitive: "Firefox's"
  },
  long: {
    nominative: "Mozilla {{ ~ }}",
    genitive: "Mozilla {{ ~.short.genitive }}"
  }
}>
<getBrandNameThisLength($length) { brandNameThis[$length] }>
<callGetBrandNameThisLength1 "{{ getBrandNameLength('long') }}">
<callGetBrandNameThisLength2 "{{ getBrandNameLength('long').genitive }}">

<getBrandNameThisGenitive($length) { brandNameThis[$length].genitive }>
<callGetBrandNameThisGenitive "{{ getBrandNameThisGenitive('long') }}">

<getBrandNameThis($length, $case) { brandNameThis[$length][$case] }>
<callGetBrandNameThis1 "{{ getBrandNameThis('long', 'nominative') }}">
<callGetBrandNameThis2 "{{ getBrandNameThis('long', 'genitive') }}">
