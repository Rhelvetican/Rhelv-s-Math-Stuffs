#set document(author: ("Rhelvetican", "jamx02"), date: auto)
#set text(font: "New Computer Modern", fill: rgb("fff"), 12pt)
#set heading(numbering: "I.1.a.")
#set page(numbering: "1", fill: rgb("#212121"))

#import "Common.typ": rainbow

#show heading: it => [
  #align(center, rainbow(text([\~ #counter(heading).display("I.1.a.") #strong(it.body) \~], 18pt)))
]

#let cen(cont) = [
  #align(center, cont)
]

#page[
  #align(
    center,
    text(16pt)[
      #rainbow(text("Ordinals", weight: "black", 30pt)) \
      #link("https://cdn.discordapp.com/attachments/1278426114578055200/1362194639217623212/Ordinals.pdf?ex=682c5ade&is=682b095e&hm=2607c68cbcb4940e6b99ca19613a6c6e06c4ba012ae23e33683c6350d610f7d8&", text("Original", 6pt, weight: "black", blue))
    ],
  )



  #grid(
    columns: (1fr, 1fr),
    align(center)[
      #rainbow(text("&*T", weight: "bold", 12pt)) \
      #text("@endministrative_", weight: "medium", font: "JetBrains Mono") \
      Typst Porter
    ],
    align(center)[
      #rainbow(text("jamx02", weight: "bold", 12pt)) \
      #text("@jamx02", weight: "medium", font: "JetBrains Mono") \
      Original Author
    ],
  )

  #align(center + bottom)[#outline()]
]

= From $psi(0)$ to $Gamma_0$

Let the set $C(0)$ be defined as empty, with operations restricted to addition alone. $psi(0)$ is the first ordinal unreachable with the addition of everything in the set $C(0)$. 1
is the first ordinal unreachable from nothing since, no matter how many $0$s you add together, you will never reach one, so: 

#cen($psi(0) = 1$)

Now, $C(1)$ contains $psi(0)$ in it. So we now have 1 in the set. What are we limited by when we add $psi(0)$ (or $1$) finitely? The answer is $omega$.

#cen($psi(1) = omega$)

Now the set $C(2)$ contains $psi(1) = omega$ and addition. If we adds $omega$ to itself finitely many times, $omega + omega + ... = omega . omega = omega^2$ is the first unreachable ordinal from $C(2)$. So:

#cen[
  $
  psi(2) = omega^2 \ 
  psi(3) = omega^3 \ 
  dots.v
  $
]

#cen[
  In general, $psi(n) = omega^n$. We can then do this: \
  $psi(omega) = omega^omega$ \
  $psi(omega^omega) = omega^omega^omega$ \
  $dots.v$
] 

Here we stop. We cannot go any higher. We can keep stacking $omega$'s but that will just be a stack of $omega$'s, since we don't have $epsilon_0$ in our sets yet, using it is forbidden.

This is where $Omega$ (or $omega_1$) shows up. It is defined as the first uncountable ordinal. Think of it like, the "next step" after you ran out of all countable ordinals $(omega, omega + 1, omega * 2, omega^omega,...)$. It is also contained in $C(n)$.

Now, instead of building towers of $omega$'s (or $attach(omega, tl: omega)$), we can just plug $Omega$ in instead. So: \ \

#cen[
  $psi(Omega) &= epsilon_0 \
  psi(Omega + 1) &= epsilon_0 * omega, &&"(infinite arithmetic on" epsilon_0")" \
  psi(Omega + 2) &= epsilon_0 * omega * omega, = epsilon_0 * omega^2 &&"(infinite arithmetic on" epsilon_0 * omega")" \
  dots.v \
  psi(Omega + omega) &= epsilon_0 * omega^omega \
  dots.v \
  $
]

#cen[Now we plug in another $psi(Omega)$:]

#cen[
  $psi(Omega + psi(Omega)) &= epsilon_0 * epsilon_0 = epsilon_0^2 = omega^(epsilon_0 * 2) $ \
  With that: \
  $psi(Omega + psi(Omega + psi(Omega))) = omega^(omega^(epsilon_0 * 2)) \ dots.v$
]

Now we reached another limit:

#cen[
  $psi(Omega + psi(Omega + psi(Omega + ...))) = omega^(omega^(dots.up^(omega^(epsilon_0 * 2)))) = epsilon_1$
]

Since we reached the limit, another $Omega$ is needed. As such:

#cen[
  $psi(Omega + Omega) = psi(Omega * 2) = epsilon_1$ \
  We can repeat this to get: \
  $psi(Omega*2 + psi(Omega*2 + ...)) = psi(Omega*3) = epsilon_2$, ...
]

From that, we can see that $psi(Omega * n) = epsilon_(n-1)$.

#cen[
  We can even have infinite nesting of: \
  $psi(Omega* psi(Omega* psi(...))) = epsilon_(epsilon_(...))$
]
 
But to go even higher, we need to collapse.

#cen($psi(Omega * Omega) = psi(Omega^2) = zeta_0$)

This is the first fixed point of $epsilon$ and the maximum of $psi(Omega * n)$. This is also referred as the Cantor ordinal. In Veblen it's $phi(2, 0)$.

#cen(rainbow(text("Let's go even further.", 36pt, weight: "black")))

#cen[$
  psi(Omega^2 + 1) &= omega^(zeta_0 + 1) \ 
  psi(Omega^2 + psi(Omega^2 + 1)) &= omega^(omega^(zeta_0 + 1)) \
  dots.v \
  psi(Omega^2 + Omega) &= epsilon_(zeta_0 + 1) \
  dots.v \
  psi(Omega^2 + Omega* psi(Omega^2)) &= epsilon_(epsilon_(zeta_0 + 1))
$]

Eventually, we reached another limit: \
#cen($
psi(Omega^2 + Omega * psi(Omega^2 + Omega * psi(...))) &= psi(Omega^2 + Omega^2) = psi(Omega^2 * 2) = zeta_1 \
dots.v \
psi(Omega^2 * psi(Omega^2)) &= zeta_(zeta_0) \
dots.v \
psi(Omega^2 * Omega) &= psi(Omega^3) = eta_0 "  (We've just collapsed there)"
$)

At this point, we can keep repeating this to find fixed points of Cantor ordinals, i.e:

#cen[$
  eta_(eta_(dots.down)) = psi(Omega^4) = phi(4, 0) \
  dots.v \
  psi(Omega^omega) = phi(omega, 0)
$]

This is called Hyper-Cantor ordinals (*HCO*) and represents the limit of
old-fashioned cantor fixed point repetition. It would require $omega$ Greek letters to
describe these many fixed points.

*HCO* is a pretty big ordinal, but as you have probably guessed, it gets bigger. $psi(Omega^(psi(Omega))) = phi(phi(1, 0), 0)$, is significantly bigger, for example.

Here is where we meet $Gamma_0$:

#cen(rainbow(text($psi(Omega^(psi(Omega^(dots.up)))) = psi(Omega^Omega) = phi(1, 0, 0) = phi(1@2) = Gamma_0$, 18pt)))

This is also called the Feferman-Schutte ordinal and it's kinda big. In fact,  it's the largest possible ordinal with primitive recursion.

#pagebreak()

= From $Gamma_0$ to *BHO*

From the previous system:
#cen[$
  psi(Omega^(Omega+1)) &= phi(1, 0, 0) = Gamma_(Gamma_(dots.down)) \
  dots.v \
  psi(Omega^(Omega+omega)) &= phi(1, omega, 0) \
  dots.v \
  psi(Omega^(Omega * 2)) &= phi(2, 0, 0) \
  dots.v \
  psi(Omega^(Omega * psi(Omega^Omega))) &= phi(phi(1, 0, 0), 0, 0) \
  dots.v \
  psi(Omega^(Omega * psi(Omega^(Omega * psi(Omega^dots.up))))) &= psi(Omega^Omega^2) = phi(1, 0, 0, 0) #text("Also called the Ackermann ordinal", 8pt)
$]

Keep repeating that:

#cen[$
  psi(Omega^(Omega^2 + 1)) &= phi(1, 0, 0, 0) \
  psi(Omega^(Omega^2 + omega)) &= phi(1, 0, omega, 0) \
  psi(Omega^(Omega^2 + Omega)) &= phi(1, 1, 0, 0) \
  psi(Omega^(Omega^2 *2)) &= phi(2, 0, 0, 0) \
  psi(Omega^(Omega^2 * omega)) &= phi(omega, 0, 0, 0) \
  psi(Omega^(Omega^2 * Omega)) &= psi(Omega^(Omega^3)) = phi(1, 0, 0,0, 0)
$]

And we've come to our next limit: $psi(Omega^Omega^omega)$. This is known as the Small Veblen Ordinal. Depsite having "Small" in it's name, it's not small at all. It cannot be represented by any amount of arguments in $phi(1,0,..., 0)$.

This is where $"TREE"(n)$ falls in term of sequence strength.

\ \

But you know the drill.

#cen[$
psi(Omega^(Omega^omega + 1)) &= phi(1@omega, 1@1) \
psi(Omega^(Omega^omega + Omega)) &= phi(1@omega, 1@2) \
psi(Omega^(Omega^omega * 2)) &= phi(2@omega) \
psi(Omega^(Omega^(omega + 1))) &= phi(1@omega+1) \
psi(Omega^(Omega^(psi(Omega^Omega)))) &= phi(1@phi(1@2)) \
psi(Omega^Omega^Omega) &= phi(1@phi(...)) = phi(1@(1,0))
$]

There we've reached the Large Veblen Ordinal. This is also the first time we've reached the supremum of *all* 1-dimensional Veblen ordinal.

\

Well, time to hit the road.

#cen[$
  psi(Omega^(Omega^Omega + 1)) &= phi(1@(1, 0), 1@1) \
  psi(Omega^(Omega^Omega + Omega)) &= phi(1@(1, 0), 1@2) \
  psi(Omega^(Omega^Omega + Omega^omega)) &= phi(1@(1, 0), 1@omega) \
  psi(Omega^(Omega^Omega * 2)) &= phi(2@(1, 0)) \
  psi(Omega^(Omega^Omega * omega)) &= phi(omega@(1, 0)) \
  psi(Omega^(Omega^(Omega+1))) &= phi(1@(1, 1)) \
  psi(Omega^(Omega^(Omega*2))) &= phi(1@(2, 0)) \
  psi(Omega^(Omega^(Omega^2))) &= phi(1@(1, 0, 0)) \
  psi(Omega^(Omega^(Omega^omega))) &= phi(1@(1@omega)) \
  psi(Omega^(Omega^(Omega^Omega))) &= phi(1@(1@(1, 0)))
$]

...Wait, now instead of stacking $omega$'s, we are now stacking $Omega$'s?

Anyway, *BHO*, aka *Bachmann-Howard Ordinal* is defined as: \ 
#cen(text($psi(Omega^(Omega^dots.up)) = phi(1@(1@(...)))$))

#pagebreak()

= From BHO to BO

Did you know that Buchholz's $psi$ function works with creating uncountables too?

$Omega$ itself is much, much bigger than $psi(x)$ where $x$ is literally anything, because $Omega$ is uncountable. It's just used in $psi$ to create countables.

Now, where just like $psi(1)$ was the maximum of all natural numbers, $psi_1(1)$ is the maximum of all countable ordinals (Ordinals that can be mapped to fundamental sequences). 

So $psi(Omega) = psi(psi_1 (1))$.

We've technically used $psi_1$ in all of our #strong("OCF")s up to *BHO*, but now they are no longer enough. We need $psi_2$.

$psi_2 (1)$ is bigger than anything made with $Omega$ or "$1^("st")$ uncountables". It makes $Omega_2$.

Beyond this point, there are no more Veblen comparisons, because it's far too weak for this. 

Here we go.

#cen[$
  psi(Omega_2 + 1) &= #[*BHO*] * omega \
  psi(Omega_2^(psi(Omega_2)^(psi(Omega_2)^dots.up))) &= psi(Omega_2^Omega) \
  psi(Omega_2^Omega^(psi(Omega_2^Omega^dots.up))) &= psi(Omega_2^Omega^Omega) \
  psi(Omega_2^Omega^dots.up) &= psi(Omega_2^(psi_1(Omega_2)))
$]

#align(bottom + center)[...Before we go any further, let's marvel at the machination of *LIFE*:]

#pagebreak()

== The First Machination

#columns(2)[
#cen[$
psi(Omega_2) + 1 \
psi(Omega_2) + psi(Omega_2) \
psi(Omega_2) * omega = psi(Omega_2 + 1) \
psi(Omega_2 + omega) \
psi(Omega_2 + psi(Omega_2)) \
psi(Omega_2 + Omega) \
psi(Omega_2 + Omega^Omega) \
psi(Omega_2 + Omega^Omega^Omega) \
psi(Omega_2 + psi_1(Omega_2)) \
psi(Omega_2 + psi_1(Omega_2 + psi_1(Omega_2))) \
psi(Omega_2 * 2) \
psi(Omega_2 * omega) \
psi(Omega_2 * psi(Omega_2 * psi(Omega_2))) \
psi(Omega_2 * Omega) \
psi(Omega_2 * Omega^Omega^Omega) \
psi(Omega_2 * psi_1(Omega_2 * psi_1(Omega_2))) \
psi(Omega_2^2) \
psi(Omega_2^omega) \
psi(Omega_2^(psi(Omega_2))) \
psi(Omega_2^(psi(Omega_2^(psi(Omega_2^(psi(Omega_2))))))) \
psi(Omega_2^Omega) \
psi(Omega_2^Omega^Omega^Omega) \
psi(Omega_2^(psi_1 (Omega_2))) \
psi(Omega_2^(psi_1 (Omega_2^(psi_1 (Omega_2^(psi_1 (Omega_2))))))) \
$]

#cen[$
psi(Omega_2^(Omega_2)) \
psi(Omega_2^Omega_2 + 1) \
psi(Omega_2^Omega_2 + omega) \
psi(Omega_2^Omega_2 + psi(Omega_2^Omega_2)) \
psi(Omega_2^Omega_2 + Omega) \
psi(Omega_2^Omega_2 + Omega^Omega^Omega) \
psi(Omega_2^Omega_2 + psi_1(Omega_2^Omega_2)) \
psi(Omega_2^Omega_2 + Omega_2) \
psi(Omega_2^Omega_2 * 2) \
psi(Omega_2^Omega_2 * omega) \
psi(Omega_2^Omega_2 * psi(Omega_2^Omega_2)) \
psi(Omega_2^Omega_2 * Omega) \
psi(Omega_2^Omega_2 * psi_1(Omega_2^Omega_2)) \
psi(Omega_2^(Omega_2 + 1)) \
psi(Omega_2^(Omega_2 + omega)) \
psi(Omega_2^(Omega_2 + psi(Omega_2^Omega_2))) \
psi(Omega_2^(Omega_2 + Omega)) \
psi(Omega_2^(Omega_2 + psi_1(Omega_2^Omega_2))) \
psi(Omega_2^(Omega_2 + psi_1(Omega_2^Omega_2 + psi_1(Omega_2^Omega_2)))) \
psi(Omega_2^(Omega_2 * 2)) \
psi(Omega_2^(Omega_2 * omega)) 
$]
]

#cen[$
psi(Omega_2^(Omega_2 * psi(Omega_2^(Omega_2)))) \
psi(Omega_2^(Omega_2 * Omega)) \
psi(Omega_2^(Omega_2 * psi_1(Omega_2^(Omega_2)))) \
psi(Omega_2^(Omega_2^2)) \
$]

#pagebreak()

== The $Omega_Omega_dots.down$ Machination

#let O3 = $Omega_3$

#columns(2)[
#cen[$
psi(#O3) + 1 \
psi(#O3) + omega \
psi(#O3) * 2 \
psi(#O3) * omega = psi(#O3 + 1) \
psi(#O3 + omega) \
psi(#O3 + psi(#O3)) \
psi(#O3 + psi(#O3 + psi(#O3))) \
psi(#O3 + Omega) \
psi(#O3 + Omega*2) \
psi(#O3 + Omega^2) \
psi(#O3 + Omega^Omega) \
psi(#O3 + psi_1(Omega_2)) \
psi(#O3 + psi_1(Omega_2 + psi_1(Omega_2 + psi_1(Omega_2)))) \
psi(#O3 + psi_1(Omega_2*2)) \
psi(#O3 + psi_1(Omega_2*psi_1(Omega_2))) \
psi(#O3 + psi_1(Omega_2^2)) \
psi(#O3 + psi_1(Omega_2^Omega)) \ 
psi(#O3 + psi_1(Omega_2^(psi_1(Omega_2)))) \ 
psi(#O3 + psi_1(Omega_2^Omega_2)) \
psi(#O3 + psi_1(Omega_2^Omega_2^Omega_2)) \
psi(#O3 + psi_1(Omega_3)) \
psi(#O3 + psi_1(Omega_3 + psi_1(Omega_3))) \
psi(#O3 + Omega_2) \
psi(#O3 + Omega_2 * omega) \
psi(#O3 + Omega_2 * psi(#O3 + Omega_2)) \
psi(#O3 + Omega_2 * Omega) \
psi(#O3 + Omega_2 * Omega^Omega) \
psi(#O3 + Omega_2 * psi_1(Omega_2 * psi_1(Omega_2)))) \
psi(#O3 + Omega_2 * psi_1(Omega_2 * 2))) \ 
psi(#O3 + Omega_2 * psi_1(Omega_2 ^ 2))) \ 
psi(#O3 + Omega_2 * psi_1(Omega_2^(psi_1(Omega_2))))
$]

#cen[$
psi(#O3 + Omega_2 * psi_1 (Omega_2^Omega_2)) \ 
psi(#O3 + Omega_2 * psi_1 (Omega_3)) \ 
psi(#O3 + Omega_2 ^2) \ 
psi(#O3 + Omega_2 ^ Omega) \ 
psi(#O3 + Omega_2 ^ (psi_1 (Omega_2^(psi_1 ( Omega_2))))) \ 
psi(#O3 + Omega_2 ^ (psi_1 (Omega_2^( Omega_2)))) \ 
psi(#O3 + Omega_2 ^ (psi_1 (#O3 ^ (psi_1 (#O3))))) \ 
psi(#O3 + Omega_2^(Omega_2^(Omega_2))) \
psi(#O3 + psi_2 (Omega_3)) \
psi(#O3 + psi_2 (Omega_3 + psi_2 (Omega_3))) \
psi(#O3 * 2) \
psi(#O3 * psi(#O3)) \
psi(#O3 * Omega) \
psi(#O3 * Omega^Omega^Omega) \
psi(#O3 * psi_1 (Omega_2)) \
psi(#O3 * psi_1 (Omega_2 * psi_1 (Omega_2))) \
psi(#O3 * psi_1 (Omega_2 * 2)) \
psi(#O3 * psi_1 (Omega_2 ^ Omega_2)) \
psi(#O3 * psi_1 (Omega_3)) \
psi(#O3 * psi_1 (Omega_3 * psi_1 (Omega_3))) \
psi(#O3 * Omega_2) \
psi(#O3 * Omega_2 * 2) \
psi(#O3 * Omega_2 * psi(#O3 * Omega_2)) \
psi(#O3 * Omega_2 * Omega) \
psi(#O3 * Omega_2 ^ 2) \
psi(#O3 * Omega_2 ^ Omega_2) \
psi(#O3 * psi_2(Omega_3)) \
$]
]

#cen[$
psi(#O3 * psi_2(Omega_3 * psi_2(Omega_3 * psi_2(Omega_3 )))) \
psi(#O3 ^2) \
psi(#O3 ^ psi(#O3)) \
psi(#O3 ^ psi(#O3 ^ psi(#O3))) \
psi(#O3 ^ Omega) \
psi(#O3 ^ Omega ^ Omega) \
psi(#O3 ^ (psi_1 (Omega_2))) \
psi(#O3 ^ (psi_1 (Omega_2 * psi_1 (Omega_2 * psi_1 (Omega_2 ))))) \
dots.v \
psi(#O3 ^ (Omega_2 ^ Omega_2)) \
psi(#O3 ^ (psi_2 (#O3))) \
psi(#O3 ^ (psi_2 (#O3 ^ (psi_2 (#O3 ^ (psi_2 (#O3))))))) \
psi(#O3 ^ #O3) \
$]

== And so, we reached BO
So uh, we went over $psi(Omega_2)$ and $psi(Omega_3)$. We can go over $psi(Omega_4)$, $psi(Omega_5)$,...

#align(center, text(48pt, weight: "black")[
  BO = $psi(Omega_omega)$
])

#pagebreak()

= From BO to $psi(Lambda)$

Before we start on our journey to $psi(Lambda)$, we can still keep going for a bit for the Takeuti-Feferman-Buchholz Ordinal, or $psi(epsilon_(Omega_omega + 1))$.

But this is where we meet a dead end. In Buchholz's $psi$ building functions, we cannot get any bigger than this, $psi(Omega_omega)$ is the hard limit. We need a new definition. Consider Buchholz's definition:

#cen[$
  C_v^(n+1) (alpha) = C_v^n (alpha) union {gamma mid(|), P(gamma) subset.eq C^n_v (alpha)} union {psi_mu (xi) mid(|) xi in alpha inter C^n_v (alpha) and xi in C_mu (alpha) and mu <= omega}
$]

We need a new definition that is not limited by $omega$. This is where the Extended Buchholz's function is needed:

#cen[$
  C_v^(m+1) (alpha) = {beta + gamma, psi_mu (eta) mid(|) beta, gamma, mu, eta in C^n_v (alpha) and eta < alpha}
$]

You don’t need to be able to read this, but the important part is that ”and
$mu$ is less then $omega$" part at the end of BF is redefined.

Now with the limit off, this is where things get a tiny bit more informal, but we
are able to construct ordinals on another level of scale.

While this is quite informal, $psi(Omega_omega arrow.t arrow.t omega) = psi(Omega_(omega+1))$, this is the definition of *TFBO* without "First $epsilon$ number after $psi(Omega_omega)$".

\ \

Lets keep going, using arbitrary indices on $psi_x$:

#cen[$
  psi(Omega_(psi(Omega_2))) \
  psi(Omega_(psi(Omega_omega))) \
  dots.v \
$]

We reached another limit, $psi(Omega_(psi(Omega_dots.down))) = psi(Omega_Omega)$. This is known as Bird's Ordinal, or BiO.

Proceed.

#cen[$
  psi(Omega_Omega^(Omega_Omega^dots.up)) = psi(Omega_(Omega + 1)) \
  psi(Omega_(Omega + psi(Omega_Omega))) \
  psi(Omega_(Omega*2)) \
  psi(Omega_(Omega^Omega)) \
  psi(Omega_(Omega^Omega^Omega)) \
  psi(Omega_(Omega_2)) \
  dots.v \
  psi(Omega_Omega_Omega)
$]

Anyway, we can keep going even deeper and deeper, eventually we will reach \
$psi(Omega_Omega_dots.down) = psi(Lambda)$, commonly known as the Extended Buchholz's Ordinal.

= From $psi(Lambda)$ to JO

Here, we can carry on with $psi(Lambda)$. We can have $psi(Lambda arrow.t arrow.t omega)$ for uncollapsed $psi(epsilon_(Lambda + 1))$, informally. Formally, it's $psi(Omega_(Lambda + 1))$.

#cen[$
  psi(Lambda) \
  psi(Lambda^Lambda) \
  psi(Omega_(Lambda + 1)) \
  psi(Omega_(Lambda * 2)) \
  psi(Omega_(Omega_(Lambda * 2))) \
  psi(Lambda_2) \
  dots.v \
$]

Now, we could keep going, but eventually we get $Lambda f p$ We need a new
way to represent larger tiers of uncountables, for which I’ll use $Phi$:

#cen[$
  Phi(1, 0) = Lambda \
  Phi(2, 0) = Lambda f p \
$]

Let's diagonalize this into a system:

#cen[$
  psi(Phi(2, 0))[3] &= psi(Phi(Phi(Phi(1, 0), 0), 0))[3] \
  &= psi(Phi(Phi(Omega_Omega_Omega, 0), 0))[3] \
  &= psi(Phi(Phi(Omega_(Omega_psi(Omega_Omega)_(psi(Omega_Omega))), 0), 0))[3]
$]

Now as you can probably guess... we have a repeat situation. Veblen notation,
and a new way to collapse. This is where $I$ comes in, the first ($I$)naccessible.
Which I will talk about later.

Here is where I bring up a new concept. As you probably know, every countable
ordinal has a sequence it follows, that being the fundamental sequence. Now if we take a close look at this, we can see that these sequences map to natural
numbers, just like $omega$ does.

This concept is called co-finality. The co-finality of an ordinal is the ”size”
if its sequence. Every single countable ordinal $alpha$ will have $c o f (alpha) = omega$. Otherwise putting them in number systems would result in them being undefined, as
with any proof theoretic.

Now I introduce the concept of regularity. Regularity is defined as any number
having co-finality equal to itself. Ordinal 1 has co-finality of 1, so 1 is regular.
$omega$ is regular, and every countable ordinals ($psi_0 (alpha)$ for any $alpha$) beyond
that won't be regular. $Omega$, the first uncountable, is a regular. $c o f (Omega^2) = Omega$,
so it's not regular. $Omega_2$ is the next number after the first uncountable where
it is a regular. It continues on through $Omega_k$, with $k$ being a natural number. 
This is not regular but it has a new special property.
It is the first ordinal such that it is a limit of regulars. By this, I mean it has
infinite smaller regulars below it, and can have a sequence be made out of those
regulars. Any limit $lambda$ in $Omega_lambda$ will be a limit of regulars.

This special property means that these limits of regulars lose their regularity.
$Omega_Omega$ is neither a regular or a limit of regulars, so everything kind of halts at
this point. That is until we make a definition so strict, it is forced to move past
any indexing or fixed point of $Omega$. This is $I$, the first Inaccessible. The definition
of inaccessibility is:

The first $alpha$ in $Omega_alpha$ such that it is a regular, and a limit of regulars. This forces us
to create an ordinal so massive it transcends anything we can do with uncountability,
because it needs to have a sequence of as many regulars as we want, as
well as still being a regular ($c o f (I) = I$).

\ \ \
Continuing...

First, you have to understand that $I$ is unreachable from $psi(alpha)$, where
$alpha$ is anything, countable or not. We also have a clean definition of
inaccessibility.

Now I want to give some intuition on how to think about I, using compar-
isons to *BHO*. Let’s think about it for a second. *BHO* is represented in a few
ways. Two main ones being:

- $psi(epsilon_(Omega+1))$
  - Here, we have a countable $epsilon$, acting on and describing $Omega arrow.t arrow.t omega$. As I’ve said many times before, this is unstandard because $psi(epsilon_(Omega+1))$ is not in set $C_alpha (x)$. he standard way is to collapse it to the next uncountable, so:
- $psi(Omega_2)$

So, in this sense, we can think of $Lambda$ as the uncountable variant of $epsilon_0$. When we
write $Omega f p$, we rewrite it as $Lambda$. Infinite tower of $Lambda$ is $Omega_(Lambda + 1)$.
Infinite $Omega$ on top of $Lambda + 1$ makes $Lambda_2$.

Now, informally, $I arrow.t arrow.t omega$ is $Omega_(I + 1)$, the formalized collapsed variant of
$epsilon_(I + 1)$. Now, if we have an infinite nesting of $Omega$ on top of $I$,
*technically* you could call it $Lambda_(I + 1)$, but that is unstandard
as it is not in the inaccessible set. So we call it $I_2$.

So, from $psi(I)$ to $psi(I_2) = psi(Phi underbrace((1@(1@(...(1, 0)...))), omega))$: \

#cen[$
  psi(Omega_(I + 1) arrow.t arrow.t omega) = psi(Omega_(I + 2)) \
  psi(Omega_(I + Omega)) \
  psi(Omega_(I + Omega_omega)) \
  psi(Omega_(I + psi_I (Omega_I))) \
  psi(Omega_(I + psi_I (Omega_I + psi_I (Omega_I)))) \
  psi(Omega_(I*2)) \
  psi(Omega_Omega_(I*2)) \
  psi(Omega_Omega_Omega_(I*2)) \
  psi(Lambda_(I + 1)) = psi(I_2) \
$]

We reached the Jager Ordinal or *JO*, defined as $psi(I arrow.t arrow.t omega)$ or $psi(Omega_(I + 1))$.

