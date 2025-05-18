#set document(author: ("Rhelvetican", "greenkookie56"), date: auto)
#set text(font: "New Computer Modern Math", fill: rgb("fff"), 12pt)
#set heading(numbering: "I.1.a")
#set page(numbering: "1", fill: rgb("#212121"))

#import "Template.typ": rainbow, start, transit, transit_higher_ticks, transit_with_ticks

#show heading: it => [
  #set align(center)
  #set text(font: "New Computer Modern")

  #rainbow([\~ (#counter(heading).display("I.1.a")) #emph(it.body) \~], 12pt)
]

#page()[
  #align(
    center,
    text(18pt)[
      #text("Rhelv's Very Small Numbers", weight: "black") \
      #text("Version 1.0.0 /// The First Protocol", 8pt)
    ],
  )

  #grid(
    columns: (1fr, 1fr),
    align(center)[
      #text("&*T", weight: "black", font: "Inter") \
      #text("@endministrative_", font: "JetBrains Mono", size: 10pt)
    ],
    align(center)[
      #text("冰罕GreenKookie56", weight: "black", font: "Inter") \
      #text("@greenkookie56", font: "JetBrains Mono", size: 10pt)
    ],
  )

  #align(bottom, outline())
]



= Definition of $"RSVN"_1$

== Notes
#align(
  center,
  [
    \# defines the rest of the array. \
    If the last element of the array is 1, it can be removed.
  ],
)

=== Array Definitions

#align(
  center,
  text(10pt, weight: "medium")[
    $[] = 1$\
    $[a; b] = underbrace([a, a, ..., a], "b")$\
    $[[...]; n] = underbrace([[...], [...], ..., [...]], "n")$\
    ${a; b} = underbrace([[[[a; a]; a]...]; a], "b copies of a")$ \
    $[a] = a; [a, b] = a arrow.t^1 b = a arrow.t b = a^b$ \
    $a{n}b = a arrow.t^n b = underbrace(a arrow.t^(n - 1) ( a arrow.t^(n - 1) (a arrow.t^(n - 1) (... (a arrow.t^(n - 1) a))) ), "b")$, #text("(Knuth's uparrow notation.)", font: "New Computer Modern", weight: "thin") \
    $[a, b, c] = underbrace([a{2}b, [a{2}b, [...[a{2}b, b, c - 1]...], c - 1], c - 1], "c")$ \
    $[a, b, c, d] = underbrace([a{3}b, b{2}c, [a{3}b, b{2}c, [...[a{3}b, b{2}c, c, d - 1]...], d - 1], d - 1], "d")$ \
    ...
    \
    \
    \
  ],
)

=== Function Definitions

#align(center + bottom)[$f_0 (n) = {n; n}$

  $f_(a + 1) (n) = f^n_a (n) = underbrace(f_a (f_a (f_a (... f_a (n)))), "n")$.]

#page([
  == Definition

  #align(center)[
    Jumpstart: \
    $g (n) = n{n}n; #text(" ") a = g(10{10^10^100}10)$
  ]

  \
  \
  \

  #columns(
    3,
    [#{
        let window = ("a": "A", "A": "B", "B": "C", "Y": "Z")

        for (from, to) in window {
          if from == "a" { start(from, to) } else { transit(from, to) }

          align(center, "... \n")
        }

        colbreak()

        let window = ("Z": "A", "A": "B", "B": "C", "Y": "Z")

        for (from, to) in window {
          if from == "Z" { transit_higher_ticks(from, to, "") } else { transit_with_ticks(from, to, "'") }

          align(center, "... \n")
        }

        colbreak()

        let window = ("Z": "A", "A": "B", "B": "C", "Y": "Z")

        for (from, to) in window {
          if from == "Z" { transit_higher_ticks(from, to, "'") } else { transit_with_ticks(from, to, "''") }

          align(center, "... \n")
        }
      }
    ],
  )

  #align(
    center + bottom,
  )[With $A^('x)_y = A^(overbrace("''...''", x))_y$, $B^('x)_y = B^(overbrace("''...''", x))_y$, ..., $Z^('x)_y = Z^(overbrace("''...''", x))_y$:

    #rainbow([$#text("RVSN")_1 = Z^('Z_0)_(Z_0)$], 48pt)
])])

= Definition of $"RSVN"_2$

#align(center, "TBA")
