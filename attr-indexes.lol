<brandName7 "Firefox"
  title['linux']: {
   *win: "Firefox on Windows",
    linux: "Firefox on Linux"
  }
>
<about7 "About {{ brandName7::title }}">
<about7Win "About {{ brandName7::title.win }}">
<about7Linux "About {{ brandName7::title.linux }}">

<brandName8['beta'] {
 *release: "Firefox",
  beta: "Firefox Beta",
  testing: "Aurora"
}
  accesskey['testing']: {
   *release: "F",
    beta: "B",
    testing: "A"
  }
>
<about8 "About {{ brandName8 }}">
<about8Accesskey "Press {{ brandName8::accesskey }}">
