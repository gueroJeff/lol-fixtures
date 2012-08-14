<orgName "Mozilla">
<brandName1 "{{ orgName }} Firefox">
<about1 "About {{ brandName1 }}">

<brandName2 "{{ about2 }} Firefox">
<about2 "About {{ brandName2 }}">

<about3 "About {{ about3 }}">

<brandName41 {
  release: "Firefox",
  beta: "{{ brandName41.release }}",
  testing: "Aurora"
}>
<about41 "About {{ brandName41 }}">

<brandName42 {
  release: "Firefox",
  beta: "{{ brandName42 }}",
  testing: "Aurora"
}>
<about42 "About {{ brandName42 }}">

<brandName43 {
  release: "Firefox",
  beta: "{{ ~.release }}",
  testing: "Aurora"
}>
<about43 "About {{ brandName43 }}">

<brandName44 {
  release: "Firefox",
  beta: "{{ ~ }}",
  testing: "Aurora"
}>
<about44 "About {{ brandName44 }}">

<brandName51 {
  release: "Firefox",
  beta: "{{ brandName51.beta }}",
  testing: "Aurora"
}>
<about51 "About {{ brandName51.beta }}">

<brandName52 {
  release: "Firefox",
  beta: "{{ ~.beta }}",
  testing: "Aurora"
}>
<about52 "About {{ brandName52.beta }}">
