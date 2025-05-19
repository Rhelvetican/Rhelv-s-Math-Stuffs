#set document(author: ("Rhelvetican", "Googology Wiki"), date: auto)
#set text(font: "New Computer Modern", fill: rgb("fff"), 10pt)
#set heading(numbering: "I.1.a.")
#set page(numbering: "1", fill: rgb("#212121"))

#import "Common.typ": rainbow

#show heading: it => [
  #align(center, rainbow(text([\~ #counter(heading).display("I.1.a.") #strong(it.body) \~], 18pt)))
]

#let dnl = [\ \ ]
#let ocf = [ #strong("OCF") ]
#let ocfs = [ #strong("OCF")s ]

#let link_to(url) = [
  #align(center + top)[ #link(url)[ #text("main article", font: "Inter", style: "italic", 8pt, blue)] ]
]

#page[
  #align(
    center,
    text(16pt)[
      #rainbow(text("Ordinal Collapsing Functions", weight: "black", 30pt)) 
    ],
  )

  #grid(
    columns: (1fr, 1fr),
    align(center)[
      #rainbow(text("&*T", weight: "bold", 12pt)) \
      #text("@endministrative_", weight: "medium", font: "JetBrains Mono")
    ],
    align(center)[
      #rainbow(text("Googology Fandom Wiki", weight: "bold", 12pt)) \
      #link("https://googology.fandom.com/")[#text("Fandom", weight: "medium", font: "JetBrains Mono")]
    ],
  )

  #align(center + bottom)[#outline()]
]

#page[
  = Definition
  #dnl
  #align(center)[
    An ordinal collapsing function (#ocf for short) is a ordinal function which is studied together with an associated ordinal notation in proof theory. One of the characteristic feature of #ocfs is that they output large ordinals using even larger ones, often uncountable ordinals. #dnl

    For example, Buchholz's #ocf $psi$ satisfies $psi_0 (Omega) = epsilon_0$ and $psi_0 (Omega_2) = #strong("BHO")$, where $epsilon_0$ denotes the least epsilon number and #strong("BHO") denotes the Bachmann-Howard ordinal. In particular, an #ocf gives a method of naming large countable ordinals using uncountable ordinals. #dnl

    There are many #ocfs in use, often similar to each other and easily confused (some even use the same symbols). As such, we should be careful when we read analyses which do not specify the #ocf used. Indeed, many analyses cannot be trusted due to the lack of the actual defintion of an #ocf, i.e. they might be referring to ill-defined #ocfs.
  ]

  \

  = Properties
  #align(center + bottom)[
    #columns(2)[
      == Relationship to ordinal notations
      \
      The most confusing part on #ocfs is that an #ocf itself can never be an ordinal notation, although many googologists who do not know the precise definition of the notion of an ordinal notation state that #ocfs are ordinal notations. An #ocf is just a function defined in set theory, while an ordinal notation is a notation equipped with a (primitive) recursive well-ordering and hence definable in arithmetic. Since the main use of an #ocf in googology is the use in computable googology and an #ocf itself is uncomputable, the lack of an ordinal notation is a serious problem. #dnl

      In order to associate an ordinal notation, one of the easiest ways is to define a recursive set of formal strings, a syntax on it as a first order language so that the notions of a term and a function symbol makes sense, a "structure" of the language whose underlying set consists of ordinals such that the interpretation of some function symbol is given by actual ordinal functions such as an #ocf, and construct a (primitive) recursive relation encoding the $in$-relation for ordinals restricted to the underlying set of the structure. That is why an #ocf is useful in the construction of an ordinal notation. #dnl

      An #ocf might not necessarily even yield an ordinal notation. #dnl

      == Relationship to Mostowski collapse
      Many of ordinal collapsing functions have an aspect analogous to Mostowski collapse. Indeed, Rathjen has described a detail of some #ocfs, which is referred to as a _pictorial_ description of collapse. For example, with respect to Bachmann's $psi$, $psi_Omega (alpha)$ can be described as "the $alpha^("th")$ collapse of $Omega$". This is because the order type of each $C^Omega (alpha, psi_Omega (alpha)) inter Omega$ is $psi_Omega (alpha)$, or in Rathjen's words, "the order-type of $Omega$ viewed from within the structure $C^Omega (alpha, psi_Omega (alpha))$ is actually $psi_Omega (alpha)$". In this way, $psi_Omega (alpha)$ can be viewed as a _(not necessarily Mostowski)_ collapse of $Omega$.
    ]

  ]
]

#page[
  = Well-known #ocf
  #align(left)[
    == Bachmann's $psi$

    #link_to("https://googology.fandom.com/wiki/Bachmann%27s_function")

    Heinz Bachmann's $psi$ function was the first true ordinal collapsing. It is somewhat cumbersome as it depends on fundamental sequences for all limit ordinals. \
    Rathjen suggests a "recast" of the system as follows:
    \ \
    #align(
      center,
      block(
        fill: rgb("fff"),
        width: 120%,
        inset: 6pt,
        outset: 6pt,
        radius: 2pt,
        text(fill: rgb("000"), 16pt)[
          Let $Omega$ be an uncountable ordinal (such as $aleph_1$). \
          $=> C^Omega (alpha, beta)$ is the closure of $beta union {0, Omega}$ under: \
          $+, (xi arrow.bar omega^xi) , (xi arrow.bar psi_Omega (xi))_(xi < alpha)$ and $psi_Omega (alpha) = min{rho < Omega : C^Omega (alpha, rho) inter Omega = rho}$.
        ],
      ),
    )
    \ \
    $psi_Omega (epsilon_Omega + 1)$ is the *Bachmann-Howard ordinal*, the proof-theoretic ordinal of Kripke-Platek set theory with axiom of infinity. \ \

    == Feferman's $theta$

    #link_to("https://googology.fandom.com/wiki/Feferman%27s_theta_function")

    Feferman's $theta$-functions constitute a hierarchy of single-argument functions $theta_alpha : "On" arrow "On"$ for $alpha in "On"$. It is often considered a two-argument function with $theta_alpha (beta) = theta alpha beta$. It is defined like so: \ \

    #align(
      center,
      block(
        fill: rgb("fff"),
        width: 120%,
        inset: 6pt,
        outset: 6pt,
        radius: 2pt,
        text(fill: rgb("000"), 16pt)[
          $C_0 (alpha, beta) &= beta union {0, omega_1, omega_2,... , omega_omega} \
          C_(n+1) (alpha, beta) &= {gamma + delta, theta_xi (eta) mid(|) gamma, delta, xi, eta in C_n (alpha, beta); xi < alpha} \
          C_n (alpha, beta) &= attach(union.big, b: n < omega, br: "") C_n (alpha, beta) \
          theta_alpha (beta) &= min{gamma mid(|) gamma in.not C (alpha, gamma) and forall delta < beta : theta_alpha (beta) < gamma}$
        ],
      ),
    )

    \ \

    Equivalently:
    - An ordinal $beta$ is considered $alpha$-critical if it cannot be constructed with the following elements:
      - All ordinals less than $beta$.
      - All ordinals in the set ${0, omega_1, ..., omega_omega}$.
      - The operator $+$.
      - Applications of $theta_xi$ for $xi < alpha$.
    - $theta_alpha$ is the enumerating function for all $alpha$-critical ordinals.

    The supremum of the countable ordinal expressed by the function is the Takeuti-Feferman-Buchholz ordinal $theta_(epsilon_(Omega_omega + 1)) (0)$, but an ordinal notation up to the ordinal associated to the function is unknown.
  ]
]

#page[
  == Buchholz's $psi$

  #link_to("https://googology.fandom.com/wiki/Buchholz%27s_function")

  Buchholz's $psi$ is a hierarchy of single-argument functions $psi_v: "On" arrow "On"$ for $v <= omega$, with $psi_v (alpha)$ abbreviated as $psi_v alpha$. Define $Omega_0 = 1$ and $Omega_v = aleph_v$ for $v > 0$, and let $P(alpha)$ be the set of distinct terms in the Cantor normal form of $alpha$ (with each term of the form $omega^xi$ for $xi in "On"$ ): #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $C_v^0 (alpha) &= Omega_v \
        C_v^(n+1) (alpha) &= C_v^n (alpha) union {gamma mid(|) P(gamma) subset.eq C_v^n (alpha) } union {psi_v xi mid(|) xi in alpha inter C^n_v (alpha) and xi in C_u (xi) and u <= omega} \
        C_v (alpha) &= attach(union.big, b: n < omega, br: "") C_v^n (alpha) \
        psi_v alpha &= min{gamma mid(|) gamma in.not C_v (alpha)}$
      ],
    ),
  )

  \
  The limit of this system is $psi_0 (epsilon_(Omega_omega + 1))$, the Takeuti-Feferman-Buchholz ordinal.

  == Madore's $psi$

  #link_to("https://googology.fandom.com/wiki/Madore%27s_function")

  David Madore defined the following simpler variant of Buchholz's function as a demonstration of how ordinal collapsing functions work: #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $C_0 (alpha) &= {0, 1, omega, Omega} \
        C_(n+1) &= {gamma + delta, gamma delta, gamma^delta, psi(eta) mid(|) gamma, delta, eta in C_n (alpha); eta < alpha} \
        C_n (alpha) &= attach(union.big, b: n < omega, br: "") C_n (alpha) \
        psi (alpha) &= min{beta in Omega mid(|) beta in.not C (alpha)}$
      ],
    ),
  ) \

  Informally:
  - $C(alpha)$ is the set of all ordinals constructible using only $0$, $1$, $omega$, $Omega$ and finite applications of the following functions: addition, multiplication, exponentiation, and $kappa arrow.bar psi(kappa)$ (the latter only if $psi(kappa)$ has yet been defined).
  - $psi(alpha)$ is the smallest countable ordinal not in $C(alpha)$.

  == Bird's $theta$
  Chris Bird devised the following shorthand for the extended (zero-indexed) Veblen function $psi$: #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $theta(Omega^(n-1)a_(n-1) + ... + Omega^2 a_2 + Omega a_1 + a_0, b) = psi(a_(n-1), ..., a_2, a_1, a_0, b)$
      ],
    ),
  ) \

  $theta(alpha, 0)$ is abbreviated as $theta(alpha)$. his function is only defined for arguments less than $Omega^omega$, and its outputs are limited by the small Veblen ordinal. This function is ill-defined for ordinals greater than or equal to $Omega^omega$.
]

#page[
  == Wilken's $theta.alt$
  Wilken's $theta.alt$ is more generic than other #ocfs. Let $Omega_0$ be either $1$ or a number in the form of $epsilon_alpha$, let $Omega_1 > Omega_0$ be an uncountable regular cardinal and for $0 < i < omega$, let $Omega_(i+1)$ be the successor cardinal to $Omega_i$. Then, for $0 < n < omega$ and $0 <= m < n$, define the following for $beta < Omega_(m+1)$: #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $Omega_m union beta &subset.eq C_m^n (alpha, beta) \
        xi, eta in C_m^n (alpha, beta) &=> xi + eta in C_m^n (alpha, beta) \
        xi in C_m^n (alpha, beta) inter Omega_(k + 2) &=> theta.alt^n_k (xi) in C_m^n (alpha, beta) "for" m < k < n \
        xi in C_m^n (alpha, beta) inter alpha &=> theta.alt^n_m (xi) in C_m^n (alpha, beta) \
        theta.alt^n_m (alpha) &= min({xi < Omega_(m + 1) mid(|) C^n_m (alpha, xi) inter Omega_(m + 1) subset.eq xi and alpha in C^n_m (alpha, xi)} union {Omega_(m+1)})$
      ],
    ),
  ) \

  $n$ is needed to define the function, but the actual value of $n$ does not affect the function's behavior. So we can safely eliminate $n$ and express the function using only two arguments $theta.alt_m (alpha)$.

  #let dta = [$dash(theta.alt)$]
  == Wilken and Weiermann's $dta$
  Wilken and Weiermann's #dta is closely related to Wilken's $theta.alt$, and their paper closely analyzes the relationship between the two. As before, let $Omega_0$ be either $1$ or a number in the form of $epsilon_alpha$, let $Omega_1 > Omega_0$ be an uncountable regular cardinal and for $0 < i < omega$, let $Omega_(i+1)$ be the successor cardinal to $Omega_i$, and finally, let $Omega_omega = sup_(i<omega) Omega_i$. For all $beta <= Omega_(i + 1)$, define the following: #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        #let group = [$dash(C_i) (alpha, beta)$]
        $Omega_i union beta &subset.eq #group \
        xi, eta in #group &=> xi + eta in #group \
        j <= i < omega and xi in dash(C_j) (xi, Omega_(j + 1)) inter #group &=> dash(theta.alt)_j (xi) in #group \
        dash(theta.alt)_i (alpha) &= min({xi < Omega_(i+1) mid(|) alpha in dash(C_i) (alpha, xi) and dash(C_i) (alpha, xi) inter Omega_(i+1) subset.eq xi} union {Omega_(i+1)})$
      ],
    ),
  ) \

  == Weiermann's $theta.alt$
  Weiermann's $theta.alt$ function has the advantage of having only a single argument, at the cost of some added complexity: #dnl

  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $C_0 (alpha, beta) &= beta union {0, Omega} \
        C_(n+1) (alpha, beta) &= {gamma + delta, omega^gamma, theta.alt(eta) mid(|) gamma, delta, eta in C_n (alpha, beta); eta < alpha} \
        C (alpha, beta) &= attach(union.big, b: n < omega, br: "") C_n (alpha, beta) \
        theta.alt(alpha) &= min{beta < Omega mid(|) C(alpha, beta) inter Omega subset.eq beta and alpha in C(alpha, beta)}$
      ],
    ),
  ) \

  Rathjen and Weiermann showed that $theta.alt(alpha)$ is defined for all $alpha < epsilon_(Omega+1)$, but do not discuss higher values.
]

#page[
  Informally:
  - $C(alpha, beta)$ is the set of all ordinals constructible using only the following:
    - Zero, all ordinals less than $beta$, and $Omega$.
    - Finite applications of addition, $kappa arrow.bar omega^kappa, kappa arrow.bar theta.alt(kappa)$ (the latter only if $theta.alt(kappa)$ has yet been defined).
  - $theta.alt(alpha)$ is the smallest ordinal $beta$ so that $alpha in C(alpha, beta)$, and $beta$ is greater than all the countable ordinals in $C(alpha, beta)$.

  == Extended Buchholz's $psi$

  #link_to("https://googology.fandom.com/wiki/Extended_Buchholz's_function") 

  Extended Buchholz's function is an extension of Buchholz's function by  Denis Maksudov. The countable limit of Extended Buchholz's function is expressed as $psi_0 (Omega_(Omega_(dots.down))) = psi_0(psi_(psi_(psi_(...) (0)) (0)) (0)) = psi_0 (Lambda)$, where $Lambda$ denotes the least omega fixed point, and is called *Extended Buchholz's ordinal* or *EBO*.

  #dnl
  
  #align(
    center,
    block(
      fill: rgb("fff"),
      width: 120%,
      inset: 6pt,
      outset: 6pt,
      radius: 2pt,
      text(fill: rgb("000"), 12pt)[
        $C^0_v (alpha) &= {beta mid(|) beta < Omega_v} \ 
        C^(n+1)_v (alpha) &= {beta + gamma, psi_(mu) (eta) mid(|) mu, gamma, beta, eta in C^n_v (alpha) and eta < alpha} \ 
        C_v (alpha) &= attach(union.big, b: n < omega, br: "") C_v^n (alpha) \
        theta.alt(alpha) &= min{gamma mid(|) gamma in.not C_v (alpha)} \ 
        Omega_v &= cases(
          1 "if" v= 0,
          "smallest ordinal with cardinality" aleph_v "if" v > 0
        ) $
      ],
    ),
  ) 

  #align(bottom + center)[
    #set quote(block: true, )
    #rainbow(
      quote(attribution: [jamx02])[
       #text("Do you know how do break down finitary Veblen or were you using it as an example?", weight: "black", 30pt, spacing: 75%)
      ],
    )
  ]
]
