#set document(author: "Rhelvetican", date: auto)
#set text(font: "New Computer Modern", fill: rgb("#fff"), 8pt)
#set page(numbering: "1", fill: rgb("#111"), paper: "ansi-a")
#set heading(numbering: "I.1.a.")

#import "Common.typ": *

$
      (f{1}g)(x) & = f^(g(x)) (x) \
      (f{2}g)(x) & = overbrace((f{1}...{1}f), (g{0}f)(x) "copies of" f) (x) \
  (f{n + 1}g)(x) & = overbrace((f{n}...{n}f), (g{n}f)(x) "copies of" f) (x) \
$

$
  Delta_alpha & = f_(alpha + 1) (10^100) \
       "Deka" & = Delta_(psi (Omega_(omega + 1)))
$
