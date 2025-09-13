#let rainbow(cont, angle: 0deg) = {
  set text(fill: gradient.linear(..color.map.rainbow, angle: angle), top-edge: "ascender", bottom-edge: "baseline")
  box(cont)
}

#let googol = $10^100$
#let googolplex = $10^googol$

#let super = symbol(
  sym.arrow.double.t,

  ("t", sym.arrow.double.t),
  ("r", sym.arrow.double.r),
  ("l", sym.arrow.double.l),
  ("d", sym.arrow.double.b),

  ("bar", sym.arrow.double.bar),
  ("bar.r", sym.arrow.double.bar.r),
  ("bar.l", sym.arrow.double.bar.l),
)

#let hyper = symbol(
  sym.arrow.triple.t,

  ("t", sym.arrow.triple.t),
  ("r", sym.arrow.triple.r),
  ("l", sym.arrow.triple.l),
  ("b", sym.arrow.triple.b),
)

#let ultra = symbol(
  sym.arrow.quad.t,

  ("t", sym.arrow.quad.t),
  ("r", sym.arrow.quad.r),
  ("l", sym.arrow.quad.l),
  ("b", sym.arrow.quad.b),
)

#let angled = symbol(
  sym.angle.l,

  ("l", sym.angle.l),
  ("r", sym.angle.r),
  ("double", sym.angle.double),
  ("double.l", sym.angle.double),
  ("double.r", sym.angle.double.r),
)

#let hash = symbol(sym.hash)

#let uparr(n) = $arrow.t^#n$
#let superuparr(n) = $super^#n$
#let hyperuparr(n) = $hyper^#n$

#let fomega(n, arr: sym.arrow) = $#n #arr.t^#n #n$

#let tab = "  "

#let brace(content, level: [1], power: [1]) = [$
    attach(\{, b: #level, br: "", t: #power, tr: "") #content attach(\}, b: #level, br: "", t: #power, tr: "")
  $]

#let paren(content, level: [1], power: [1]) = [$
    attach(\(, b: #level, br: "", t: #power, tr: "") #content attach(\), b: #level, br: "", t: #power, tr: "")
  $]

#let bracket(content, level: [1], power: [1]) = [$
    attach(\[, b: #level, br: "", t: #power, tr: "") #content attach(\], b: #level, br: "", t: #power, tr: "")
  $]
