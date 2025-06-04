#set document(author: ("Rhelvetican", "greenkookie56"), date: auto)
#set text(font: "New Computer Modern Math", fill: rgb("fff"), 12pt)
#set heading(numbering: "I.1.a.")
#set page(numbering: "1", fill: rgb("#212121"))

#import "Common.typ": rainbow

#show heading: it => [
  #align(center, rainbow([\~ #counter(heading).display("I.1.a.") #strong(it.body) \~]))
]

#page[  
  #align(
    center,
    text(18pt)[
      #rainbow(text("Rhelv's Very Small Numbers", weight: "black"), angle: 180deg) \
      #text("Version 3.0.0 /// Infernion", 8pt)
    ],
  )

  #grid(
    columns: (1fr, 1fr),
    align(center)[
      #rainbow(text("&*T", weight: "black", font: "Inter")) \
      #text("@endministrative_", font: "JetBrains Mono", size: 10pt)
    ],
    align(center)[
      #rainbow(text("冰罕GreenKookie56", weight: "black", font: "Inter")) \
      #text("@greenkookie56", font: "JetBrains Mono", size: 10pt)
    ],
  )

  #align(bottom, outline())
]




