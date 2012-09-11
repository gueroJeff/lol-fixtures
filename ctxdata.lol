<plural($n) { $n == 1 ? 'one' : 'many' }>

<unread "Unread notifications: {{ $unreadNotifications }}">
<unreadPlural[plural($unreadNotifications)] {
  one: "One unread notification",
  many: "{{ $unreadNotifications }} unread notifications"
}>

<hello "Hello {{ $user.name }}!">
<helloLast "Hello Mr. {{ $user.name.last }}!">
