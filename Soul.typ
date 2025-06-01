#set document(author: ("Rhelvetican", "Googology Wiki"), date: auto)
#set text(font: "New Computer Modern", fill: rgb("fff"), 48pt)
#set page(fill: rgb("#212121"), margin: 5%, "a0")

#import "Common.typ": rainbow

#align(center + top)[
  #rainbow(text("~ Hyper-E Notation ~", weight: "black", 96pt))
]

\

#align(center + horizon)[$
    e n = 10^n \ \
    e 100 = 10^100 ="Googol"\ \
    e e n = 10^(10^n) \ \
    e e 100 = 10^(10^100) = "Googolplex" \ \
    e e e n = 10^(10^(10^n)) \ \
    e 1 \# 4 = 10 arrow.t arrow.t 4 = 10^(10^(10^10)) \ \
    e 14 \# 4 = 10 arrow.t arrow.t 4 [arrow.t 14] = 10^(10^(10^(10^14))) \ \
    e 1 \# n = 10 arrow.t arrow.t n = underbrace(10^(10^(10^(dots.up))), n) \ \
    e n \# m = 10 arrow.t arrow.t m[arrow.t 14] = underbrace(10^(10^(10^(dots.up^n))), m) \ \
    e 1 \# 1 \# 4 = 10 arrow.t arrow.t arrow.t 4 = 10 arrow.t arrow.t 10 arrow.t arrow.t 10 arrow.t arrow.t 10 \ \
    e 1 \# 8 \# 4 = 10 arrow.t arrow.t arrow.t 4 [arrow.t arrow.t 8] = 10 arrow.t arrow.t 10 arrow.t arrow.t 10 arrow.t arrow.t 10 arrow.t arrow.t 8\ \
    e 1 \# 1 \# 1 \# 4 = 10 arrow.t arrow.t arrow.t arrow.t 4 = 10 arrow.t arrow.t arrow.t 10 arrow.t arrow.t arrow.t 10 arrow.t arrow.t arrow.t 10 \ \
    e 1 \# 1 \# 8 \# 4 = 10 arrow.t arrow.t arrow.t arrow.t 4 [arrow.t arrow.t arrow.t 8] = 10 arrow.t arrow.t arrow.t 10 arrow.t arrow.t arrow.t 10 arrow.t arrow.t arrow.t 10 arrow.t arrow.t arrow.t 8\ \
    e 10 \# \# 4 = e 10 \# 10 \# 10 \# 10 = 10 arrow.t arrow.t arrow.t arrow.t 10 [arrow.t arrow.t arrow.t 10 [arrow.t arrow.t 10 [arrow.t 10]]]\ \
    e 10 \# \# 100 = underbrace(e 10 \# 10 \# dots \# 10, 100) = 10{100}10[{99}10][{98}10]...[arrow.t 10]\ \
    e n \# \# m = underbrace(e n \# n \# dots \#n, m) = 10{m}n[{m-1}n][{m-2}n]...[arrow.t n] \ \
    e a \#^(c+1) b = underbrace(e a \#^(c) a \#^(c) a \#^(c) ... \#^(c) a, b)
  $]

#text(
  align(bottom)[
    Notes:
    + $arrow.t$ represents exponentiation, $arrow.t arrow.t$ represents tetration, etc.
    + $a{n}b = a arrow.t^n b = a underbrace(arrow.t dots arrow.t, n) b$.
    + $[{m}n]$ means "put ${m}n$" on top of the expanded stack.
    + $\#^n arrow.bar.double underbrace(\#...\#, n)$.
    + This notation goes far, far beyond the last (non-definition) entry on this example, the limit of Talisman, $e 10 \#\# 1000$ isn't that "much" bigger than it.
  ],
  36pt,
)

