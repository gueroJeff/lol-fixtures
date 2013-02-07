<brandName "Firefox">
<brandNameHash {
  release: "Firefox",
  testing: "Aurora"
}>
<brandNameDeep {
  masculine: {
    nominative: {
      short: "Firefox",
      long: "Mozilla Firefox"
    },
    genitive: {
      short: "Firefox's",
      long: "Mozilla Firefox's"
    }
  },
  feminine: {
    nominative: {
      short: "Aurora",
      long: "Mozilla Aurora"
    },
    genitive: {
      short: "Aurora's",
      long: "Mozilla Aurora's"
    }
  }
}>
<channels {
  testing: 'testing',
  release: 'release'
}>

<about1 "About {{ brandName }}">
<about2 "About {{ brandNameHash.release }}">
<about4 "About {{ brandNameHash['release'] }}">
<about3 "About {{ brandNameHash.testing }}">
<about5 "About {{ brandNameHash['testing'] }}">

<about21 "About {{ brandNameDeep }}">
<about22 "About {{ brandNameDeep.feminine }}">
<about23 "About {{ brandNameDeep['feminine'] }}">
<about24 "About {{ brandNameDeep.feminine.genitive }}">
<about25 "About {{ brandNameDeep['feminine'].genitive }}">
<about26 "About {{ brandNameDeep['feminine']['genitive'] }}">
<about27 "About {{ brandNameDeep.feminine.genitive.long }}">

<about31 "About {{ brandNameHash[channels] }}">
<about32 "About {{ brandNameHash[channels.testing] }}">
<about33 "About {{ brandNameHash[channels['testing']] }}">
