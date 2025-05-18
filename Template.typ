#let mkfn(from, to) = {
  align(center, [$#to = f_(#from) (#from)$ \ ])
}

#let start(from, to) = {
  mkfn($from$, $to_0$)
  mkfn($to_0$, $to_1$)
  mkfn($to_1$, $to_2$)
}

#let transit(from, to) = {
  mkfn($from_(from_0)$, $to_0$)
  mkfn($to_0$, $to_1$)
  mkfn($to_1$, $to_2$)
}

#let transit_higher_ticks(from, to, ticks) = {
  if ticks == "" {
    mkfn($from_(from_0^ticks)^ticks$, $to^'_0$)
    mkfn($to_0^'$, $to_1^'$)
    mkfn($to_1^'$, $to_2^'$)
  } else {
    mkfn($from_(from_0^ticks)^ticks$, $to^(ticks"'")_0$)
    mkfn($to_0^(ticks"'")$, $to_1^(ticks"'")$)
    mkfn($to_1^(ticks"'")$, $to_2^(ticks"'")$)
  }
}

#let transit_with_ticks(from, to, ticks) = {
  mkfn($from_(from_0^ticks)^ticks$, $to^ticks_0$)
  mkfn($to_0^ticks$, $to_1^ticks$)
  mkfn($to_1^ticks$, $to_2^ticks$)
}

#let rvsn(n) = {
  $#text("RVSN")_(#n)$
}

#let rainbow(content, size) = {
  set text(fill: gradient.linear(..color.map.rainbow), size: size)
  box(content)
}
