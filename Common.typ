#let rainbow(cont, angle: 0deg) = {
  set text(fill: gradient.linear(..color.map.rainbow, angle: angle), top-edge: "ascender", bottom-edge: "baseline")
  box(cont)
}

#let super = symbol(
  sym.arrow.double.t,

  ("t", sym.arrow.double.t),
  ("r", sym.arrow.double.r),
  ("l", sym.arrow.double.l),
  ("d", sym.arrow.double.b),
)

#let hyper = symbol(
  sym.arrow.triple.t,

  ("t", sym.arrow.triple.t),
  ("r", sym.arrow.triple.r),
  ("l", sym.arrow.triple.l),
  ("b", sym.arrow.triple.b),
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

