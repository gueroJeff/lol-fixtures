<brandName {
  nom: "Aurora",
  gen: "Aurory",
  dat: "Aurorze",
  acc: "Aurorę",
  ins: "Aurorą",
  loc: "Aurorze",
  voc: "Auroro"
}
  _gender: "feminine"
>

/* Firefox/Aurora has been updated */
<updated[brandName.._gender] {
  masculine: "{{ brandName }} został zaktualizowany.",
  feminine: "{{ brandName }} została zaktualizowana."
}>

<plural($n) { $n == 1 ? 
                 'one' : 
                 $n % 10 >= 2 && 
                 $n % 10 <= 4 && 
                 ($n % 100 < 10 || $n % 100 >= 20) ? 
                   'few' :
                   'many' }>

<message {
  one: {
    nom: "wiadomość",
    gen: "wiadomości",
    dat: "wiadomości",
    acc: "wiadomość",
    ins: "wiadomością",
    loc: "wiadomości",
    voc: "wiadomości"
  },
  *many: {
    nom: "wiadomości",
    gen: "wiadomości",
    dat: "wiadomościom",
    acc: "wiadomości",
    ins: "wiadomościami",
    loc: "wiadomościach",
    voc: "wiadomości"
  }
}
  _gender: "feminine"
>

/* You have X unread messages */
<unreadMessages[plural($unreadCount)] {
  one: "Masz 1 nową {{ message[plural($unreadCount)].acc }}",
  few: "Masz {{ $unreadCount }} nowe {{ message[plural($unreadCount)].acc }}",
  many: "Masz {{ $unreadCount }} nowych {{ message[plural($unreadCount)].acc }}"
}>

<pluralZero($n) { $n == 0 ?
                    'zero' : 
                    $n == 1 ? 
                      'one' : 
                      $n % 10 >= 2 && 
                      $n % 10 <= 4 && 
                      ($n % 100 < 10 || $n % 100 >= 20) ? 
                        'few' :
                        'many' }>

/* For the zero case: You don't have any new messages */
<unreadMessagesZero[pluralZero($unreadCount)] {
  zero: "Nie masz nowych {{ message[pluralZero($unreadCount)].acc }}",
  one: "Masz 1 nową {{ message[pluralZero($unreadCount)].acc }}",
  few: "Masz {{ $unreadCount }} nowe {{ message[pluralZero($unreadCount)].acc }}",
 *many: "Masz {{ $unreadCount }} nowych {{ message[pluralZero($unreadCount)].acc }}"
}>
