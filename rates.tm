<TeXmacs|1.99.8>

<style|generic>

<\body>
  Consider a few layers of air of width <math|<wide|\<delta\>|^>>, each of
  which transmits a fraction <math|<wide|\<tau\>|^>> of the light that
  reaches them. Let <math|I<rsub|0>> be the intensity at the top,
  <math|I<rsub|1>> the intensity below the first packet, and so on.

  Then

  <\equation>
    <label|eq:discrete>I<rsub|n>=<wide|\<tau\>|^><rsup|n>I<rsub|0>
  </equation>

  <math|>Now it's a bit unsatisfying that we can't easily vary the layer
  thickness, because we only know <math|<wide|\<tau\>|^>> for our given
  <math|<wide|\<delta\>|^>>. To remedy that, we will try two different
  approaches for making an <math|I> that's defined in more places.

  <with|font-series|bold|Exponential dependency, aka the right answer.> Then,
  let the intensity <math|I> be a function which we can evaluate for any
  thickness <math|x>. Since <eqref|eq:discrete> suggests we're after an
  exponential function, we assume

  <\equation*>
    *I<around*|(|x|)>=I<rsub|0>exp<around*|(|\<beta\>x|)>
  </equation*>

  for some <math|\<beta\>> which we still have to find.
  <math|I<around*|(|0|)>=I<rsub|0>> is true without further fuss. We would
  like that the approximation agrees with the \<#2018\>old way\<#2019\> for a
  thickness of <math|<wide|\<delta\>|^>>.We thus need

  <\equation*>
    I<around*|(|<wide|\<delta\>|^>|)>=I<rsub|0>exp<around*|(|\<beta\><wide|\<delta\>|^>|)>=I<rsub|0><wide|\<tau\>|^>,
  </equation*>

  so <math|\<beta\>=log<around*|(|<wide|\<tau\>|^>|)>/<wide|\<delta\>|^>>.
  (Or simply <math|I<around*|(|x|)>=I<rsub|0><wide|\<tau\>|^><rsup|x/<wide|\<delta\>|^>>>,
  which also obviously agrees with our premise.)

  <with|font-series|bold|Glued linear pieces, aka the numerical answer.> Now
  we'll use short glued-together linear approximations to the intensity
  profile. In this simple example, we can see what happens entirely with
  pencil and paper. To do that, we determine the slope (local rate of
  change!) of <math|I> at <math|x>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|I<around*|(|x+\<delta\>|)>-I<around*|(|x|)>|\<delta\>>>|<cell|=>|<cell|I<rsub|0><frac|exp<around*|(|\<beta\><around*|(|x+\<delta\>|)>|)>-exp<around*|(|\<beta\>x|)>|\<delta\>>>>|<row|<cell|>|<cell|=>|<cell|I<rsub|0><frac|exp<around*|(|\<beta\>x|)><around*|(|exp<around*|(|\<beta\>\<delta\>|)>-1|)>|\<delta\>>>>|<row|<cell|>|<cell|\<approx\>>|<cell|I<rsub|0><frac|exp<around*|(|\<beta\>x|)><around*|(|\<beta\>\<delta\>|)>|\<delta\>>>>|<row|<cell|>|<cell|=>|<cell|I<rsub|0>\<beta\>exp<around*|(|\<beta\>x|)>>>|<row|<cell|>|<cell|=>|<cell|\<beta\>I<around*|(|x|)>,>>>>
  </eqnarray*>

  where we have approximated <math|exp<around*|(|\<beta\>\<delta\>|)>\<approx\>1+\<beta\>\<delta\>>
  (the first two terms of the Taylor series), which is a good approximation
  when <math|<left|\|>\<beta\>\<delta\><left|\|>> is small\Vthe situation
  that we are in. (If you allow the use of calculus, then
  <math|I<rprime|'><around*|(|x|)>=\<beta\>I<around*|(|x|)>> is also simple
  to derive.)

  If we call our glued-together approximation <math|<wide|I|~>>, and if we
  suppose we know <math|<wide|I|~><around*|(|x|)>> and would like to move
  forward, we could write:

  <\equation*>
    <wide|I|~><around*|(|x+\<delta\>|)>=<wide|I|~><around*|(|x|)>+\<beta\><wide|I|~><around*|(|x|)>\<delta\>
  </equation*>

  to match the slope behavior of <math|I> (Note that we're not cheating and
  using the slope of <math|I>, which we know in this simple example, but
  which we wouldn't know in general). Taking <math|n> steps of size
  <math|\<delta\>> gives us

  <\equation*>
    <wide|I|~><around*|(|\<delta\>n|)>=<wide|I|~><around*|(|0|)><around*|(|1+\<beta\>\<delta\>|)><rsup|n>=I<rsub|0><around*|(|1+\<beta\>\<delta\>|)><rsup|n>
  </equation*>

  Approximating <math|n\<approx\>x/\<delta\>> gives us

  <\equation*>
    <wide|I|~><around*|(|x|)>=I<rsub|0><around*|(|1+\<beta\>\<delta\>|)><rsup|x/\<delta\>>.
  </equation*>

  By plotting the function (or taking the limit!) you can convince yourself
  that <math|<wide|I|~>> approaches <math|I> as we shrink the step size
  <math|\<delta\>>.

  I should emphasize that I've written the above to convince the two of you
  (Jana and George) that what I'm suggesting agrees with what you would
  mathematically expect, at least if you use a small enough step size. I am
  not suggesting to inflict any of the above on the students. Instead, I hope
  that we can convey an intuitive notion of \<#2018\>instantaneous rate of
  change\<#2019\> to the students and build from that. In the above, I find
  it quite intuitive that the slope of the light intensity would be
  proportional to <with|font-shape|italic|both> the current light intensity
  and some notion of the \<#2018\>transmissivity\<#2019\> of the cloud.
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|python>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|eq:discrete|<tuple|1|?>>
  </collection>
</references>