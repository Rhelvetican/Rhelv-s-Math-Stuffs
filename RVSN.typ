#set document(author: ("Rhelvetican", "greenkookie56"), date: auto)
#set text(font: "New Computer Modern Math", fill: rgb("fff"), 12pt)
#set heading(numbering: "I.1.a.")
#set page(numbering: "1", fill: rgb("#212121"))

#import "Common.typ": rainbow

#show heading: it => [
  #align(center, rainbow([\~ #counter(heading).display("I.1.a.") #strong(it.body) \~]))
]

#page()[
  #align(
    center,
    text(18pt)[
      #rainbow(text("Rhelv's Very Small Numbers", weight: "black")) \
      #text("Version 2.0.0 /// The Third Protocol", 8pt)
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

= Definition of $RR_1$
== Setup

#align(center)[
  $a[c]b = a arrow.t^c b$ \ \
  $a underbrace([...[c]...], x "brackets")b = underbrace(a underbrace([...[c]...], x-1 "brackets")... underbrace([...[c]...], x-1 "brackets")a, b "copies of a")$

  $FF_0 (n) = n underbrace([...[n]...], "n brackets")n$ \ \
  $FF_(x+1) (n) = FF^x_x (n)$ with $FF^x$ denotes function iteration. \ \
  $FF_(alpha) (n) = FF_(alpha[n]) (n)$ if $alpha$ is a limit ordinal. \ #text("With " + $alpha [n]$ + " denotes the " + $n^("th")$ + " term a fixed fundamental sequence assigned to the aforementioned ordinal.", 9pt) \ \

  $[a, b] = FF_b (a)$ \ \
  $[a, b, c] = underbrace([a, [a, [..., [a, FF_b (b), c - 1],...], c-1], c - 1], c)$; $[a, b, 1] = [a, b]$ \ \
  $[a, b, c, d] = underbrace([a, b, [a, b, [..., [a, b, FF_c (c), d - 1],...], d - 1], d - 1], d)$; $[a, b, c, 1] = [a, b, c]$ \
  ... \

  $[a; b] = underbrace([a, a, ..., a], b)$ \
  $[[...]; b] = underbrace([[...], [...], ..., [...]], b)$ \
  $[[a; b]] = underbrace([[a; a]; b])$ \
  ... \
  $[\#^n [a; b]] = underbrace([...[a; b]...], n "brackets")$ \ \
  $GG (n) = [\#^n [n; n]]$
]

== Definition

#align(center)[Let $RR_0 = FF_(psi (1, 0, 0, 0)) ({10, 10, 4, 2})$.]

#columns(2)[
  #align(center)[
    $A_0 = GG(RR_0)$, $A_1 = GG (A_0)$, ... \
    $B_0 = GG(A_(A_0))$, $B_1 = GG (B_0)$, ... \
    ... \
    $Z_0 = GG (Y_(Y_0))$, $Z_1 = GG (Z_0)$, ... \
    $A^'_0 = GG (Z_(Z_0))$, $A^'_1 = GG (A^'_0)$, ... \

    $A^('n)_0 = A^(overbrace('... ', n))_0 = GG (Z^('(n - 1))_Z^('(n - 1))_0)$, ... \
    $B^('n)_0 = B^(overbrace('... ', n))_0 = GG (A^('n)_A^('n)_0)$, ... \
    ... \
    $Z^('n)_0 = Z^(overbrace('... ', n))_0 = GG (Y^('n)_Y^('n)_0)$, ... \
  ]
]

#align(center + horizon)[
  #rainbow(text("With that, we can define " + $RR_1$ + " as:", 24pt)) \ \ \
  #text($RR_1 = Z^('Z^('Z_1)_(Z_1))_(Z_(Z_1)^('Z_1))$, 48pt) \ \ \

  #rainbow(text("Yeah, that's nuts.", size: 6pt))
]

#page[
  = Definition of $RR_2$
  == Setup
  #align(center)[
    $GG_0^0 (n) = GG_0 (n) = GG (n)$ \
    $GG_(x+1) (n) = GG^x_x (n) = underbrace(GG_x (GG_x (... (GG_x (n)))), x)$ \
    $GG_(alpha) (n) = GG_(alpha[n])^n (n)$ if $alpha$ is a limit ordinal. \ \ #text("With " + $alpha [n]$ + " denotes the " + $n^("th")$ + " term a fixed fundamental sequence assigned to the aforementioned ordinal.", 9pt) \
    $(a, b) = underbrace(GG_omega ( GG_omega (... (GG_omega (a)))), b)$ \
    $(a, b, c) = underbrace((a, (..., (a, (b, c), c - 1) ,...), c - 1), c)$ ; (a, b, 0) = (a, b) \
    $(a, b, c, d) = underbrace((a, b, (..., (a, b, (b, c, d), d - 1) ,...), d - 1), d)$ ; (a, b, c, 0) = (a, b, c) \
    ... \
    $(a; b) = underbrace((a, ..., a), b)$
  ]

  == Definition
  #align(center)[
    Let:

    $NN_0 = (GG_(RR_1) (RR_1); GG_(RR_1) (RR_1))$, \
    $NN_(x + 1) = (NN_x ; NN_x)$

    With $NN[x] = NN_x$: \ \ \ \ \ \ \ \

    #text($RR_2 = underbrace(NN[NN[...[NN[NN_255]]]], GG_(NN_255) (NN_255))$, 40pt)

    #text("may god save my wretched soul.", 4pt)
  ]
]


