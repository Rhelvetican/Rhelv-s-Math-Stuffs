#let rainbow(cont) = {
  set text(fill: gradient.linear(..color.map.rainbow, angle: 30deg), top-edge: "ascender", bottom-edge: "baseline")
  box(cont)
}