<theHourIs "It's {{ @hour }}">

<timeOfDay($hour) { $hour >= 6 && $hour < 12 ?
                      'morning' :
                       $hour >= 12 && $hour < 19 ?
                        'afternoon' :
                         $hour >= 19 && $hour < 23 ?
                           'evening' :
                           'night'
}>

<greeting[timeOfDay(@hour)] {
  morning: "Good morning",
  afternoon: "Good afternoon",
  evening: "Good evening",
  night: "Y U NO asleep?"
}>

<one "{{ @one }}">

<isItOne($n) { $n == 1 ? 'one' : 'other' }>

<whatIsIt[isItOne(@one)] {
  one: "It's one",
 *other: "It's not one"
}>
