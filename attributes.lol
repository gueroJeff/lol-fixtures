/* basic values */

<brandName1 "Firefox"
  title: "Mozilla Firefox"
>
<about1 "About {{ brandName1::title }}">

<brandName2 "Firefox"
  title: {
    win: "Firefox on Windows",
    linux: "Firefox on Linux"
  }
>
<about2 "About {{ brandName2::title }}">
<about2Win "About {{ brandName2::title.win }}">
<about2Linux "About {{ brandName2::title.linux }}">


/* relative references */

<brandName3 "Firefox"
  title: "Mozilla {{ ~ }}"
>
<about3 "About {{ brandName3::title }}">

<brandName4 "Firefox"
  title: {
    win: "{{ ~ }} on Windows",
    linux: "{{ ~ }} on Linux"
  }
>

<about4 "About {{ brandName4::title }}">
<about4Win "About {{ brandName4::title.win }}">
<about4Linux "About {{ brandName4::title.linux }}">

<brandName5 {
  nominative: "Firefox",
  genitive: "Firefox's"
}
  title: {
    win: "{{ ~ }} on Windows",
    linux: "{{ ~ }} on Linux"
  }
>

<brandName6 {
  nominative: "Firefox",
  genitive: "Firefox's"
}
  title: {
    win: "{{ ~.genitive }} on Windows",
    linux: "{{ ~.genitive }} on Linux"
  }
>

<brandName7 "{{ ~::title }}"
  title: "Mozilla Firefox"
>


/* indexes */

<brandName9['beta'] {
  release: "Firefox",
  beta: "Firefox Beta",
  testing: "Aurora"
}
  accesskey: {
    release: "F",
    beta: "B",
    testing: "A"
  }
>
<about9 "About {{ brandName9 }}">
<about9Accesskey "Press {{ brandName9::accesskey }}">



/* cyclic references */

<brandName10 "Firefox"
  title: {
   *win: "{{ ~::title.self }} on Windows",
    self: "{{ ~ }}"
  }
>
<about10 "About {{ brandName10::title }}">

<brandName11 "Firefox"
  title: "{{ ~::title }}"
>
<about11 "About {{ brandName11::title }}">
