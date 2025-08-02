#set document(author: "Rhelvetican", date: auto)
#set text(font: "New Computer Modern", fill: rgb("#fff"), 8pt)
#set page(numbering: "1", fill: rgb("#111"), paper: "ansi-a")
#set heading(numbering: "I.1.a.")

#import "Common.typ": *

$
  {a, b} & = a^b \
  {\#, 1} & = {\#} \
  {a, b, \#, c} & = underbrace({a, {a, {...{a, a,underbrace(\#\, dots\, \#\,, b)c - 1}..., \# ,c - 1}, \# ,c - 1}, \# ,c - 1}, b) \
  {a}_(x+1) & = underbrace({a, ..., a}_x, x) \
  {a|b}_c & = underbrace({a}_{a}_dots.down_{a}_c, b) \
  \
  \
  "AR"_0 & = {10^100|10^100}_(10^100) \
  "AR"_(n+1) & = {"AR"_n|"AR"_n}_("AR"_n) \
  "TigerNinja" & = "AR"_60
$
