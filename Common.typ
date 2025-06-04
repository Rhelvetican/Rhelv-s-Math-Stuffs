#let rainbow(cont, angle: 0deg) = {
  set text(fill: gradient.linear(..color.map.rainbow, angle: angle), top-edge: "ascender", bottom-edge: "baseline")
  box(cont)
}

#let super = math.class("relation", sym.arrow.double.t)
#let hyper = math.class("relation", sym.arrow.triple.t)

