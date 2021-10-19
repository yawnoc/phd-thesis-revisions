%%%%%%%%%%%%%%%%
%title
  revisions

%resources
  <script src="paged.polyfill.js"></script>

%css a~~~~~~~~
  :root {
    --dotted-line: 1.5px dotted black;
    --solid-line: 1px solid black;
    --solid-line-thick: 3px solid black;
    --line-grey: #949494;
    --text-grey: #595959;
    --abs-gap: 0.05em;
    --norm-gap: 0.1em;
    --delimeter-size: 1.1em;
  }
  @page {
    border-top: var(--solid-line);
    margin: 2cm;
    padding-top: 0.5em;
    size: A4;
    @top-left {
      content: "Conway Li";
      margin-bottom: 0.3em;
      vertical-align: bottom;
    }
    @bottom-right {
      content: "Page " counter(page) " of " counter(pages);
      margin-top: 0.5em;
      vertical-align: top;
    }
  }
  a {
    color: blue;
    text-decoration: none;
  }
  blockquote {
    border-left: var(--solid-line-thick);
    margin: 0.4em 0.5em;
    padding: 0.3em 0.5em;
  }
  blockquote > :first-child {
    margin-top: 0;
  }
  blockquote > :last-child {
    margin-bottom: 0;
  }
  body {
    font-family: Tinos, serif;
    font-size: 11pt;
  }
  del {
    background: #fdd;
    text-decoration: line-through;
  }
  h1 {
    break-after: avoid;
    font-size: 1.5em;
    margin: 0.5em auto;
    text-align: center;
  }
  h2 {
    break-after: avoid;
    font-size: 1.33em;
    margin-top: 1.35em;
  }
  h2:first-child {
    margin-top: 0.75em;
  }
  h3 {
    break-after: avoid;
    font-size: 1.2em;
    margin-top: 1.3em;
  }
  blockquote > h3 {
    margin: 0 0 0.5em;
  }
  ins {
    border: var(--dotted-line);
    color: #050;
    margin: 0 0.15em;
    padding: 0 0.1em;
    text-decoration: none;
  }
  .revisions > li {
    break-inside: avoid;
    margin-top: 2em;
  }
  .revisions > li:first-child {
    margin-top: 0.5em;
  }
  .revisions > li:first-child > p:first-child {
    margin-top: 0;
  }
  h1 + ul {
    margin-top: 1em;
  }
  ol, ul {
    margin: 0.3em 0;
    padding-left: 1.7em;
  }
  li > p {
    margin-bottom: 0.5em;
  }
  sub, sup {
    line-height: 0;
  }
  table {
    margin: 0.2em auto 0;
  }
  td {
    padding: 0.2em 1em 0;
  }
  .abs-open {
    font-size: var(--delimeter-size);
    margin-right: var(--abs-gap);
  }
  .abs-close {
    font-size: var(--delimeter-size);
    margin-left: var(--abs-gap);
  }
  .action {
    border: var(--solid-line);
    margin-right: 0.15em;
    padding: 0.05em 0.25em;
  }
  .del {
    font-family: 'DejaVu Sans';
    font-size: 0.985em;
  }
  .display-equation {
    margin: 0.2em auto;
    text-align: center;
  }
  .equation-number {
    float: right;
  }
  .examiner {
    color: var(--text-grey);
    border-color: var(--line-grey);
    font-family: Arimo, sans-serif;
  }
  .norm-open {
    font-size: var(--delimeter-size);
    margin-right: var(--norm-gap);
  }
  .norm-close {
    font-size: var(--delimeter-size);
    margin-left: var(--norm-gap);
  }
  .thesis {
    margin: 0.4em 2em;
  }
~~~~~~~~
%%%%%%%%%%%%%%%%

<## Headings ##>
Z{: \h3-exam : Suggestions from Examiner's Report :}
Z{: \h3-defence : Suggestions from Viva Voce :}

<## Actions in respons to suggestions ##>
Z{: [NO] : <span class="action">Not adopted.</span> :}
Z{: [YES] : <span class="action">Adopted.</span> :}

<## Mathematical equations ##>
A{: [[.]] : [[·]] :} <## U+00B7 MIDDLE DOT ##>
A{: [[del]] : \/__{.del .vector} ∇__ :} <## U+2207 NABLA ##>
e{%
  \[\[
    (?P<symbol> [^\s0-9] )
  \]\]
%
  \/__{.vector}\g<symbol>__
%}
c{%
  \(\(
    (?P<equation_number> [0-9]+[.][0-9]+ )
  \)\)
%
  <span class="equation-number">(\g<equation_number>)</span>
%}
c{%
  \|\|
    (?P<operand> .+? )
  \|\|
%
  <span class="norm-open">~~||~~</span>\\
    \g<operand>\\
  <span class="norm-close">~~||~~</span>
%}
c{%
  \|
    (?P<operand> .+? )
  \|
%
  <span class="abs-open">~~|~~</span>\\
    \g<operand>\\
  <span class="abs-close">~~|~~</span>
%}
Z{%
  \{\{
    (?P<symbol> [^\s0-9] )
  \}\}
%
  <var>\g<symbol></var>
%}
Z{%
  \{
    (?P<digit> [0-9] )
  \}
%
  <sub>\g<digit></sub>
%}
Z{: {dot} : <sub>•</sub> :} <## U+2022 BULLET ##>
Z{: {flat} : <sub>♭</sub> :} <## U+266D MUSIC FLAT SIGN ##>
Z{: {sharp} : <sub>♯</sub> :} <## U+266F MUSIC SHARP SIGN ##>


# Ph.D. Thesis Revisions #

====
- Version submitted for examination:
  b<https://github.com/yawnoc/phd-thesis/tree/v0.3.3>

- Version with revisions:
  b<https://github.com/yawnoc/phd-thesis/tree/revisions>

- Difference:
  b<https://github.com/yawnoc/phd-thesis/compare/v0.3.3...revisions>
====


## Examiner~1 (A.B.) ##


### \h3-exam ###

++++++++++++++++{.revisions}
1.
  """"{.examiner}
  If I were critical I would ask that the candidate
  extend both Section~1.1 and Chapter~9.
  [...]
  However I am not insistent that these modification[s] are made;
  they are certainly not a deal-breaker by any stretch.
  """"
  ----
  [NO] This was more of a remark rather than a hard suggestion.
  Indeed the examiner awarded a straight 'Pass'
  rather than a 'Pass subject to minor revision'.
  ----
++++++++++++++++


### \h3-defence ###

++++++++++++++++{.revisions}
1.{#busy}
  ----
  [Page 41]:
  ----
  """"{.examiner}
  Suggest improvement to the explanation of Figure~3.22a.
  (Actual wording: it is a very "busy" diagram.)
  """"
  ----
  [YES] The following changes have been made to make the text terser
  and easier to understand:
  ----
  ====
  - Split the long 'frontiers of inflection' sentence using a semicolon.
  - Replaced ambiguous 'which' with explicit 'these frontiers'.
  - Removed reference to numerical integration, which is irrelevant.
  - Fixed missing hyphen for adjectival 'straight-line'.
  - Removed 'immediately' before 'discard'.
  - Replaced '{{x}}-axis' with '{{y}} = 0' and 'line of symmetry',
    both in the text and in the caption.
    ('{{x}}-axis' was confusing because Figure~3.22a has a frame, not axes.)
  ====
  ----
  [Page~40, Paragraph~4]:
  ----
  """"{.thesis}
  [...]
  Figure~3.22a shows (among other features) the frontiers of inflection
  for the two branches of traced boundaries<del>,
  which we obtain by computing</del>\
  <ins>; these frontiers are</ins> the zero-contours
  of the second derivative~(3.54)<del> using numerical integration</del>.
  [...]
  Since the end is to construct a domain
  with the straight<ins>-</ins>line contour {{x}} = π/2
  serving as the constant-temperature boundary,
  we <del>immediately</del> discard any convex portion of traced boundary
  which does not reach {{x}} = π/2. Of the remaining convex portions,
  those which do not reach <del>the {{x}}-axis ({{y}} = 0)</del>\
  <ins>{{y}} = 0 (the line of symmetry)</ins>
  are unable to join up with a convex portion
  from the opposite branch [...].
  """"
  ----
  [Page~41, Figure~3.22a caption]:
  ----
  """"{.thesis}
  [...] and the <del>{{x}}-axis</del><ins>line of symmetry~{{y}} = 0</ins>.
  """"
  ----
  See b<https://github.com/yawnoc/phd-thesis/commit/6b393fd>
  for the changes to the LaTeX source.
  ----
++++++++++++++++


## Examiner~2 (I.M.) ##


### \h3-exam ###

++++++++++++++++{.revisions}
1.
  ----
  [Page~3, first top-level paragraph]:
  ----
  """"{.examiner}
  where does ["as an ordinary differential equation~(ODE)
  for the traced boundaries, and integrate"] come from?
  """"
  ----
  [NO] This is just a broad statement of how boundary tracing works.
  ----

2.
  ----
  [Page~5, Figure~1.3]:
  ----
  """"{.examiner}
  Of interesting note,
  this is also an important problem in porous media
  when pores are approximated as triangles.
  """"
  ----
  [NO] No revision to make; just a comment.
  ----

3.
  ----
  [Page~8, Paragraph~2]:
  ----
  """"{.thesis}
  [...] we must remember that the small-slope assumption ([[del]]{{T}})² ≪ 1
  does not hold <del>good</del><ins class="examiner">well</ins>
  in the highly nonlinear regimes of the Laplace--Young equation.
  """"
  ----
  [NO] Per Wiktionary b<https://en.wiktionary.org/wiki/hold_good>:
  ----
  """"
  ### Verb ###
  __hold good__ ([...]) (_intransitive_)
  ++++
  1. To continue being true or valid; to hold true.
  ++++
  """"

4.
  ----
  [Page~8, Paragraph~3]:
  ----
  """"{.examiner}
  Can you put a diagram in showing and explaining
  [the Finn \&~Kosmodem'yanskii] modifications?
  """"
  ----
  [NO] A diagram *could* be put in,
  but it would not sit suitably within the context of the section
  because the Finn \&~Kosmodem'yanskii modifications
  are not boundary tracing modifications.
  ----

5.
  ----
  [Page~10]:
  ----
  """"{.examiner}
  [...] Perhaps adding an example with figure
  of where boundary tracing was used to success might help.
  [...] A concrete example or further explanation of this
  would help set the stage for the importance of this work.
  """"
  ----
  [NO] Figure~1.7 and its related paragraph
  already do this (an example of prior boundary tracing).
  ----

6.
  ----
  [Page~14, unnumbered equation]:
  ----
  """"{.examiner}
  ----
  [...] I suggest getting rid of the part before you introduce u(s) and v(s).
  At the very least reverse the order.
  You set everything up in terms of s already
  so deriving~(2.22) and~(2.23) is natural.
  You can then make a comment that if there are not any singularities
  then you could get u=u(v) (or vice versa) as du/ds/dv/ds.
  ----
  ----
  Actually, as I work it out, it's not immediately clear this calculus holds.
  ----
  """"
  ----
  [NO] The existing order of presentation is natural and logical.
  We begin with coordinate parametrisation (for analytical work)
  and only pass to arc-length~{{s}} (for numerical work)
  if there are singularities.
  Things are set up in terms of~{{s}} to avoid backtracking
  when presenting the arc-length case.
  ----
  ----
  The calculus (d{{v}}/d{{u}} = d{{v}}/d{{s}} ÷ d{{u}}/d{{s}}) is sound,
  as explained in the viva voce.
  ----

7.
  ----
  [Page~19, first paragraph]:
  ----
  """"{.examiner}
  It doesn't hurt to remind the reader of the problem here
  so that they don't have to flip back and forth.
  """"
  ----
  [NO] The conduction--radiation problem is self-explanatory
  (conduction in the interior and radiation on the boundary),
  and I have used back references to earlier equations
  in order to keep the lead paragraph free of display equations
  (as I have consistently done for all chapters).
  ----

8.
  ----
  [Page~19, Figure~3.1]:
  ----
  """"{.examiner}
  I would rewrite this section a bit by setting up the problem Txx=0
  with T=constant on x=a*lambda and radiation condition on x=lambda.
  It makes the problem and domain easier to visualize.
  You can then do your non-dimensionalization and explain that
  T=x is a solution and carry on.
  """"
  ----
  [NO] Since boundary tracing *starts with* solutions to the field equation
  (rather than ending with them),
  it is more appropriate to begin with the plane-source solution
  ({{T}} = {{h}}{0}{{x}}) from the outset.
  ----
  ----
  Furthermore, the suggested rewrite would raise questions such as
  why one of the boundaries isn't chosen at~{{x}} = 0;
  such issues are avoided in the existing presentation.
  ----

9.
  ----
  [Page~21, Paragraph~1, after~(3.15)]:
  ----
  """"{.thesis}
  [...] consists of the <del>infinite</del><ins class="examiner">finite</ins>
  strip 0 ≤ {{x}} ≤ 1.
  """"
  ----
  [NO] The strip is infinite in the {{y}}-direction.
  ----

10.
  ----
  [Page~21, Paragraph~2, before~(3.16)]:
  ----
  """"{.examiner}
  avoid this kind of subjective language ["boring"] in the thesis :).
  """"
  ----
  [NO] The straight-line boundary ({{x}} = 1) is boring.
  This is no more subjective than saying that it is "trivial",
  but less highbrow.
  ----

11.
  ----
  [Page~21, equation~(3.16)]:
  ----
  """"{.examiner}
  why not use the arclength formulation here. \|grad(T)=1\|.
  """"
  ----
  [NO] We want analytical results, and we can get them here
  by using coordinate (rather than arc-length) parametrisation.
  ----

12.
  ----
  [Page~34, equation~(3.53)]:
  ----
  """"{.examiner}
  put x0 in here.
  """"
  ----
  [NO] Here we have:
  ----
  """"{.thesis}
  Algebraically, {{x}}{0} is the positive solution to [equation~(3.53)],
  a polynomial equation in~cos~{{x}}.
  """"
  ----
  Since (3.53)~is a generic equation, it ought to have {{x}} be generic,
  rather than substituted with the particular value~{{x}}{0}.
  Furthermore, keeping {{x}} generic is consistent with the treatment
  if the equation were to have two positive solutions, {{x}}{0} and~{{x}}{1}.
  ----

13.
  ----
  [Page~34, last line]:
  ----
  """"{.examiner}
  do you want to draw
  [two curves which are virtually indistinguishable]
  together?
  """"
  ----
  [NO] The figure would simply appear as if there were only one curve.
  The caption would be no different to the existing text.
  ----

14.
  ----
  [Page~40, Paragraph~4]:
  ----
  """"{.thesis}
  [...] Only the portions of traced boundary
  which lie <ins class="examiner">on the</ins> convex side
  of the inflection frontiers
  will be valid as radiation boundaries. [...]
  """"
  ----
  [NO] Omitting "on the" is stylistic, in the same way that one might say
  "portions [...] which lie this side of the inflection frontiers".
  Having "on the" followed by "of the" is a bit of a mouthful.
  ----

15.
  ----
  [Page~40, Paragraph~4]:
  ----
  """"{.thesis}
  Since the <del>end</del><ins class="examiner">aim?</ins>
  is to construct a domain [...]
  """"
  ----
  [NO] End means aim.
  ----

16.
  ----
  [Page~40, Paragraph~5]:
  ----
  """"{.examiner}
  [...]
  I'm not sure how to word it better because it is quite complex.
  Is it possible to add more figures to walk the reader through the steps?
  """"
  ----
  [NO]
  For improvements to the wording, see the changes made in reponse to
  [Examiner~1 \> Viva Voce \> Suggestion~1](#busy).
  ----

17.
  ----
  [Page~42, Paragraph~2]:
  ----
  """"{.examiner}
  [Instead of "({{B}}~arbitrary)",] say what it is...\
  I know you say it in the figure but you should still say it here.
  """"
  ----
  [NO] The text has "the general case ({{B}}~arbitrary)".
  If the parenthetical were changed to "{{B}} = 0.082506",
  this would imply that "the general case" is that specific value,
  which it is not.
  ----

18.
  ----
  [Page~42, Paragraph~3]:
  ----
  """"{.examiner}
  you need to be careful
  [when you say error is "strictly less than 7 × 10^−4"].
  This is not absolutely good.
  Is the error numerical or model?
  Does it refine with mesh size, etc.?
  """"
  ----
  [NO] The focus of boundary tracing is not numerics,
  so such a detailed analysis was not considered.
  The numerical verification only serves to ensure that
  nothing has gone awry with boundary tracing
  (which we know produces exact results when used correctly).
  ----

19.
  ----
  [Page~42, last line]:
  ----
  """"{.examiner}
  ["completely"] is a strong word, I would remove it.
  It is very convincing yes, but there is no rigorous proof or anything.
  """"
  ----
  [YES] Compromise:
  ----
  """"{.thesis}
  We can therefore be <del>completely</del><ins>extremely</ins> confident
  in the validity of the boundary tracing procedure.
  """"
  ----
  See b<https://github.com/yawnoc/phd-thesis/commit/f1cde15>.
  ----

20.
  ----
  [Page~46, equation~(4.14)]:
  ----
  """"{.examiner}
  This is a bit of a convoluted away to arrive at this.
  Since you're taking T0 and r0 as the scales anyway just do that
  and arrive at your dimensionless constant for the radiation condition.
  """"
  ----
  [NO] There was more than one way to choose the scales.
  Doing it in full shows why the chosen scaling is the best.
  ----

21.
  ----
  [Page~47, after~(4.21)]:
  ----
  """"{.examiner}
  Just for math technicality,
  just because there is a maximum doesn't mean there is a single maximum.
  In fact x=1 is a critical point as well, but it is a minimum.
  Need just some different language here.
  """"
  ----
  [NO] I do not claim there is a single maximum because there is a maximum.
  The single maximum follows because there is a single sign change
  in the derivative from positive to negative.
  ----

22.
  ----
  [Page~52, first line]:
  ----
  """"{.examiner}
  Is ["neither of these are limit cycles"] obvious? It's not clear to me.
  If it's just a repeat of the previous exercise
  then maybe state that doing this would show these are not limit cycles.
  """"
  ----
  [NO] Intuitively one would expect the limit cycles to disappear
  when {{A}} no longer takes the critical value.
  In any case, the sought exercise appears on the next page (Section~4.4.1).
  ----

23.{#most-severe}
  ----
  [Page~52, Paragraph~3, first line]:
  ----
  """"{.examiner}
  reword ["this restriction is most severe"]. Do you mean it's impossible?
  """"
  ----
  [NO] Not impossible, but hardly possible.
  Most means very.
  At the end of that paragraph:
  ----
  """"{.thesis}
  [...] the only convex domain is the trivial disk
  whose boundary is the circle {{r}} = {{r}}{flat}.
  """"

24.
  ----
  [Page~52, Paragraph~3, middle]:
  ----
  """"{.examiner}
  reword ["spiralling in forever towards the singularity"]
  """"
  ----
  [NO] The trajectory in question spirals in, forever, towards the singularity.
  ----

25.
  ----
  [Page~54, before~(4.36)]:
  ----
  """"{.examiner}
  ----
  [For "tangent line to the circle",]
  you should clarify the tangent line to the circle at phi=0
  whichi s also the point of tangency for the curve.
  You should make this clear.
  ----
  ----
  [W]hat does ["up to a constant in~{{ϕ}}"] mean?
  ----
  """"
  ----
  [NO] "Up to a constant in~{{ϕ}}" means that
  we can add an arbitrary constant to~{{ϕ}} in~(4.36).
  Hence why there is no need to clarify that the tangency occurs at~{{ϕ}} = 0.
  Figure~4.7 (directly above) also makes it clear
  that the tangency occurs at~{{ϕ}} = 0.
  ----

26.
  ----
  [Page~54, equation~(4.37)]:
  ----
  """"{.examiner}
  clarifying you're expanding phi small here.
  """"
  ----
  [NO] Obvious from the context.
  ----

27.
  ----
  [Page~54, unnumbered equation, after~(4.37)]:
  ----
  """"{.examiner}
  ----
  I'm not sure I really get this.
  What does convexity at the point of tangency mean
  when locally it's quadratic?
  ----
  ----
  Also it looks like you're just limiting the incoming slope
  to be less than the circle.
  Why it this?
  ----
  """"
  ----
  [NO] {{ξ}} = 0 is the circle, not the tangent line,
  as explained in the viva voce.
  ----

28.{#acceleration}
  ----
  [Page~56, first line]:
  ----
  """"{.examiner}
  [[[r]]''] isn't really acceleration...be careful with that terminology.
  """"
  ----
  [NO] We are parametrising, with {{r}} (the independent variable)
  playing the role of time.
  ----

29.
  ----
  [Page~56, Paragraph~1, after~(4.49)]:
  ----
  """"{.examiner}
  does [{{κ}} have the same sign changes as the curvature]?
  Why not just use the curvature with the outward normal?
  """"
  ----
  [NO] Yes, {{κ}} has the same sign changes as the curvature.
  And we avoid the usual curvature because it contains a horrible power of~3/2.
  ----

30.
  ----
  [Page~56, Paragraph~2, before~(4.50)]:
  ----
  """"{.examiner}
  is [{{L}} = log~{{r}}] really for brevity?
  Seems like more work.
  If need by just put (4.51) and then have L defined there.
  """"
  ----
  [NO] Yes it is for brevity. {{L}}~appears another 9~times.
  And having the definition separate from~(4.51) improves readability.
  ----

31.
  ----
  [Page~56, after~(4.54)]:
  ----
  """"{.examiner}
  This analysis makes more mathematical sense than what you did above.
  Do you need the earlier piece [Page~54]?
  """"
  ----
  [NO] The earlier piece is needed.
  It makes sense to check that convexity is even possible,
  before we pass to a global curvature analysis.
  If convexity were not possible,
  then the global analysis would be a waste of time.
  ----

32.
  ----
  [Page~56, last paragraph, before numbered list]:
  ----
  """"{.examiner}
  [Should {{r}} ≤ {{r}}{sharp} be] r=r\_sharp?
  """"
  ----
  [NO]
  {{r}} ≤ {{r}}{sharp} is (correctly) a disk.
  {{r}} = {{r}}{sharp} would be a circle.
  ----

33.
  ----
  [Page~58, Figure~4.12 and Paragraph~2]:
  ----
  """"{.examiner}
  It looks like the error is highest at the inner circle
  where the log condition is applied.
  Presumably a smaller inner radius will correct this.
  """"
  ----
  [NO] This is a misreading of Figure~4.12;
  note that the plotted relative error is negative.
  The relative error figure has now been made positive,
  per [Examiner~2 \> Viva Voce \> Suggestion~2](#absolute).
  ----

34.{#exact}
  ----
  [Page~58, Paragraph~2]:
  ----
  """"{.examiner}
  how many [triangular elements] is it?
  State the exact value [instead of "some~400"].
  """"
  ----
  [NO] The main point of boundary tracing is not the numerics.
  The exact number is irrelevant.
  Even in numerics papers, inexact counts are given.
  For example:
  ----
  """"
  The final mesh consisted of about 18000 elements.
  """"
  ----
  Scott, Sander, \&~Norbury (2005).
  Computation of capillary surfaces for the Laplace--Young equation.
  '''The Quarterly Journal of Mechanics and Applied Mathematics''',
  58~(2), 201--212.
  b<https://doi.org/10.1093/qjmamj/hbi005>
  ----

35.
  ----
  [Page~60, Paragraph~1, last line]:
  ----
  """"{.examiner}
  [Should be an upper-case] T\_sharp
  """"
  ----
  [NO] Lower-case {{t}}{sharp} is correct, since it is a Celsius temperature.
  Recall that {{t}}/°C = {{T}}/K − 273.15 [footnote on Page~26].
  ----

36.
  ----
  [Page~64, after~(5.11)]:
  ----
  """"{.examiner}
  Consider rewording this so that v=-infinity corresponds to x=-a
  and v=+infinity corresponds to x=a.
  These are not singularities geometrically,
  just singular from the source/sink perspective.
  """"
  ----
  [NO] While they are not singularities geometrically,
  the whole point of Section~5.1 is that we have
  derived the geometry by starting from equal and opposite sources.
  From Page~63:
  ----
  """"{.thesis}
  While it would be well to introduce the bipolar coordinate system
  before writing down the known solution,
  a better understanding of the physics is obtained
  by first writing down the known solution
  and then observing how bipolar coordinates arise as a result.
  """"
  ----
  The term _singularity_ is therefore fully appropriate.
  ----

37.
  ----
  [Page~69, Item~1]:
  ----
  """"{.examiner}
  I'm not sure what [avocado-like moat] means.
  Is it shaped like an avocado?
  What is the 2D avocado equivalent?
  """"
  ----
  [NO] The non-viable domain is shaped
  like the flesh of an avocado that has just been opened.
  The inner viable domain is like the seed,
  which is positioned off-centre in relation to the flesh.
  ----

38.
  ----
  [Page~71, first line]:
  ----
  """"{.thesis}
  The nature of the <del>up to four</del> critical terminal points
  <del>that exist</del> can be determined by inspecting Figure~5.5.
  [...]
  """"
  ----
  [NO] The suggested edit removes information that does not appear
  elsewhere in the text.
  ----

39.
  ----
  [Page~73, equation~(5.46)]:
  ----
  """"{.examiner}
  same comments here about "velocity" and "acceleration"...not proper terms
  """"
  ----
  [NO] Per [Examiner~2 \> Examiner's Report \> Suggestion~28](#acceleration).
  ----

40.
  ----
  [Page~75, Paragraph~2]:
  ----
  """"{.examiner}
  again state how many exactly [instead of "approximately~500"].
  Your work should be reproducible.
  """"
  ----
  [NO] Per [Examiner~2 \> Examiner's Report \> Suggestion~34](#exact).
  On reproducibility:
  ----
  ++++
  1. Knowing the exact number of mesh elements doesn't make
     an unstructured triangular mesh more reproducible, and
  2. All code is available at b<https://github.com/yawnoc/phd-code>.
  ++++

41.
  ----
  [Page~86, Paragraph~2]:
  ----
  """"{.thesis}
  <del>\
    The known solution~(6.11) is insufficiently simple in form
    for the boundary tracing ODE to be analytically solvable
    under the coordinate parametrisations~{{y}} = {{y}}({{x}})
    and~{{x}} = {{x}}({{y}}).\
  </del>\
  <ins class="examiner">\
    The boundary tracing ODE cannot be analytically solved
    for either parameterizations y=y(x) or x=x(y)
    using the known solution (6.11).\
  </ins>
  [...]
  """"
  ----
  [NO] The suggested version is awkward.
  Initally it reads as "[...] solved for [...]",
  and it takes a second reading to correctly parse it as
  "[...] solved, for [...]".
  ----

42.
  ----
  [Page~86, last paragraph, second line]:
  ----
  """"{.thesis}
  More interesting of course are the new boundaries obtained;
  by construction, these <del>also are</del>\
  <ins class="examiner">are also</ins> curves
  along which the boundary condition~(6.10) holds.
  """"
  ----
  [NO] The suggested edit changes the meaning.
  ----
  ----
  The original version says that
  we already have "curves along which [...] (6.10)~holds",
  and that the new boundaries also have this property.
  ----
  ----
  The suggested version says that we already have
  new boundaries with certain unnamed properties,
  but that they also have the property
  of being "curves along which [...] (6.10)~holds".
  ----

43.
  ----
  [Page~86, last paragraph, second-last line]:
  ----
  """"{.examiner}
  almost? What isn't arbitrary about [an almost arbitrary fashion]?
  """"
  ----
  [NO] The "only restriction", which is described directly afterwards
  in the clause following the semicolon.
  ----

44.{#most-interesting}
  ----
  [Page~87, Paragraph~2]:
  ----
  """"{.thesis}
  While the domains produced in Figure 6.5 are <del>most</del> interesting,
  [...].
  """"
  ----
  [NO] Most means highly, or very.
  ----

45.
  ----
  [Page~91, Paragraph~1]:
  ----
  """"{.thesis}
  Away from {{x}} = 0 we
  <del>simply let Mathematica's default meshing algorithm do its work</del>\
  <ins class="examiner">use Mathematica's default meshing algorithm</ins>,
  resulting in [...].
  """"
  ----
  [NO] The suggested edit changes the meaning.
  We do not need to do anything;
  it is Mathematica's algorithm that does the work.
  ----

46.
  ----
  [Page~92, Figure~6.11]:
  ----
  """"{.examiner}
  why not benchmark on the wedge problem
  for which you do have an analytical solution.
  You could show agreement for gamma near Pi/2 and then veer away.
  """"
  ----
  [NO] Because no analytical solution exists for the wedge problem.
  If it is the linearised problem that is being referred to,
  that problem is, well, linear; it will hardly challenge a nonlinear solver.
  ----

47.
  ----
  [Page~92, last paragraph]:
  ----
  """"{.examiner}
  how does [the mesh element requirement] help with accuracy?
  """"
  ----
  [NO] The ability to "evaluate first derivatives accurately"
  will clearly improve with a denser mesh.
  ----

48.
  ----
  [Page~95, Figure~6.14]:
  ----
  """"{.examiner}
  Consider throughout consistently using degrees or radians.
  The latter is better.
  """"
  ----
  [NO]
  In theoretical equations I have consistently used radians,
  (e.g. for regime inequalities such as {{α}} \< π/2 − {{γ}}).
  In specific numerical examples I have used degrees for readability.
  For example, if ({{α}}, {{γ}}) = (40°, 55°) then we can immediately see
  that it belongs to the moderate regime
  (because the angles add to more than 90°).
  This is far from obvious if we instead write ({{α}}, {{γ}}) = (2π/9, 11π/36).
  ----

49.
  ----
  [Page~95, last line]:
  ----
  """"{.examiner}
  are [the numerical wedge solutions Cartesian-based]?
  I thought you set up a polar coordinate mesh on an arc.
  """"
  ----
  [NO] It is an unstructured triangular mesh,
  as clearly indicated in the text [Page~92, last paragraph]
  and clearly visible in Figure~6.12 [Page~93].
  ----

50.
  ----
  [Page~98, Figure~6.17 etc.]:
  ----
  """"{.examiner}
  It is not clear you need these figures.
  At immediate glance it's not clear how they are different
  from the figures you are referencing.
  I would just reference the old figures.
  """"
  ----
  [NO] The figures make it clear that this is a separate problem,
  even though we get qualitatively similar results.
  ----

51.
  ----
  [Page~100, before~(6.44)]:
  ----
  """"{.examiner}
  [{{ξ}} = δ{{ξ}} is] awkward.
  Why not just use one variable and indicate it is small like you did before?
  """"
  ----
  [NO] Because here we have many occurrences of "evaluation at {{ξ}} = 0".
  It would be confusing to simultaneously have {{ξ}} be the small parameter.
  ----

52.
  ----
  [Page~101, equation~(6.56)]:
  ----
  """"{.examiner}
  it's not clear what the value of this rate is.
  A brief discussion or clarification would be good.
  """"
  ----
  [NO] We immediately see that the rounding curve
  makes an exponentially fast approach,
  with the coefficient inversely proportional
  to the tangential derivative~∂{{T}}/∂{{η}} (which is small).
  ----

53.
  ----
  [Page~102, Paragraph~1]:
  ----
  """"{.examiner}
  This opening paragraph is awkward in its informal approach
  (contrasting much of the other text).
  You should consider rewriting
  to better motivate the multiple corner rounding analysis.
  """"
  ----
  [NO] Here is the paragraph in question:
  ----
  """"{.thesis}
  Unless we can conjure up multiple roundings of the corner
  from the same numerical solution,
  the objection raised earlier will yet stand:
  Why bother with boundary tracing at all?
  """"
  ----
  I see nothing informal.
  Neither the term "conjure", nor "yet" (meaning "still"),
  nor the rhetorical question are informal.
  ----

54.
  ----
  [Page~102, equation~(6.59)]:
  ----
  """"{.examiner}
  Yes...but you don't even need to use gamma at all
  since you don't have to satisfy any BCs in particular
  to find a solution to the the PDE.
  """"
  ----
  [NO] The existing wedge solutions result in roundings to an offset wedge
  (which is critical to the problem at hand),
  as explained in the viva voce.
  ----

55.
  ----
  [Page~104, Figure~6.23]:
  ----
  """"{.examiner}
  Since you need to take gamma\_dot\>gamma
  does it make sense to choose a very small gamma for the computations?
  """"
  ----
  [NO] The treatment here covers all values of~{{γ}} simultaneously,
  as explained in the viva voce.
  The figures just show a particular example.
  ----

56.
  ----
  [Page~108, Item~3]:
  ----
  """"{.thesis}
  ++++{start=3}
  3.
    For {{α}} greater than about 45° (Figure~6.28c)
    bulging likewise does not occur,
    and there is a <del>much-welcomed</del> improvement
    in the spread of the rounding curves.
  ++++
  """"
  ----
  [NO] The suggested edit removes meaning.
  ----

57.
  ----
  [Page~110, Figure~6.31]:
  ----
  """"{.examiner}
  Why can conventional cover much more?
  """"
  ----
  [NO] See [Examiner~2 \> Viva Voce \> Suggestion~4](#conventional)
  ('Boundary tracing' versus 'Conventional').
  ----

58.
  ----
  [Page~110, Paragraph~1]:
  ----
  """"{.examiner}
  ["subsidiarily" is an] awkward choice of words
  """"
  ----
  [NO] It is not.
  The numerical procedure was auxiliary (or supplemental)
  to the asymptotic procedure.
  Hence it was "used subsidiarily".
  ----

59.
  ----
  [Page~110, Paragraph~2]:
  ----
  """"{.thesis}
  [...] It is this crucial observation which allows [...],
  <del>\
    thus making numerical boundary tracing
    more than just a pointless exercise\
  </del>
  <ins class="examiner">\
    thus making the boundary tracing technique a valuable alternative
    to full numerical solutions\
  </ins>\
  . [...]
  """"
  ----
  [NO] The suggested edit changes the meaning.
  ----

60.
  ----
  [Page~111, Paragraph~1, second sentence]
  ----
  """"{.examiner}
  run-on awkward sentence
  """"
  ----
  [NO] The commas in the sentence clearly delineate the three clauses.
  ----

61.
  ----
  [Page~111, Paragraph~2, first sentence]:
  ----
  """"{.examiner}
  Add context.
  You have been solving [the capillary BVP] in the last chapter as well.
  """"
  ----
  [NO] Sufficient context is provided by the chapter heading
  and the lead paragraph (at the top of the same page).
  ----

62.
  ----
  [Page~112, Paragraph~2]:
  ----
  """"{.examiner}
  why [is there a large discrepancy]?
  """"
  ----
  [NO] This is addressed in the very next paragraph,
  "[...] Further investigation shows [...]".
  ----

63.
  ----
  [Page~119, Paragraph~2]:
  ----
  """"{.examiner}
  I would avoid using bleak...it is what it is,
  but this sets up the section as pointless.
  """"
  ----
  [NO] It tells the reader that
  any results we can obtain in this section are few and far between.
  It is also underpromising and overdelivering.
  ----

64.
  ----
  [Page~122, Figure~7.17]:
  ----
  """"{.examiner}
  height appears non-smooth
  """"
  ----
  See [Examiner~2 \> Viva Voce \> Suggestion~5](#non-smooth).
  ----

65.
  ----
  [Page~123, Paragraph~1, last sentence]:
  ----
  """"{.examiner}
  awkward sentence
  """"
  ----
  [NO] Perhaps the implication is that "change tack" is too modern
  while "hitherto" is too archaic.
  But "tack" (for "direction" or "course of action") is an old word.
  ----

66.
  ----
  [Page~127, first line]:
  ----
  """"{.examiner}
  what does
    ["Note that the groove angle~{{φ}} cannot be arbitrarily small or large"]
  mean?
  """"
  ----
  [NO] Exactly what it says.
  The groove angle~{{φ}} can't be too small or too big.
  The text then goes on to give the bounds {{φ}} ≥ arccos(1/{{ρ}}{0})
  and {{φ}} < {{γ}}{dot} with explanation.
  ----

67.
  ----
  [Page~127, last paragraph]:
  ----
  """"{.thesis}
  [...] this is because each groove is <del>itself</del>
  a moderate wedge admitting a locally planar height rise.
  """"
  ----
  [NO] Per Wiktionary b<https://en.wiktionary.org/wiki/itself>:
  ----
  """"
  ### Pronoun ###
  __itself__ ([...])
  ++++
  1. [...]
  2. (_emphatic_) it;
     _used to intensify the subject,
     especially to emphasize that it is the only participant in the predicate_
  3. [...]
  ++++
  """"

68.
  ----
  [Page~128, last paragraph]:
  ----
  """"{.thesis}
  [...]
  Whether this is actually feasible
  and how one might achieve a prescribed dependence on position are
  <del>questions which we shall leave to the physicists and engineers</del>\
  <ins class="examiner">open questions</ins>;
  [...]
  """"
  ----
  [NO] The suggested edit removes meaning.
  Those questions are not ones that I can address as an applied mathematician.
  ----

69.
  ----
  [Page~129]:
  ----
  """"{.examiner}
  I find this last section on etching a bit unclear.
  Why is the etching needed?
  Why not just take the proper rounded contour and dip/compute.
  I understand it's not a boundary curve, but why does this matter?
  """"
  ----
  [NO] Without the etching, we do not get a (near-)level height rise.
  Compare the black (grooved) and grey (grooveless) height-rise profiles
  in Figure~7.23 [Page~128].
  ----

70.
  ----
  [Page~132, second paragraph, first sentence]:
  ----
  """"{.thesis}
  The transformation~(8.2) \&~(8.3)
  <del>is most general, allowing</del><ins class="examiner">allows</ins>
  the walls of the wedge or cusp to be curved.
  [...]
  """"
  ----
  [NO] The suggested edit removes meaning.
  The examiner seems to dislike (or be unfamiliar with)
  the use of "most" to mean "highly" or "very";
  see [Suggestion~23](#most-severe) and [Suggestion~44](#most-interesting)
  above.
  ----

71.
  ----
  [Page~132, second paragraph, last sentence]:
  ----
  """"{.examiner}
  awkward sentence
  """"
  ----
  [NO] The sentence might be mildly poetic, but there is nothing wrong with it
  (in terms of both grammar and understandability):
  ----
  """"{.thesis}
  [...] Requiring not the generality of~(8.2) \&~(8.3),
  but nevertheless inspired by the overall idea,
  we implement here a similar transformation in polar coordinates
  (which are orthogonal).
  """"

72.
  ----
  [Page~133, equations~(8.7) to~(8.11)]:
  ----
  """"{.examiner}
  You're making this sound much more complicated than it is.
  This is just transforming to polar coordinates.
  """"
  ----
  [NO] The transformation is non-trivial.
  We are trying to interpret~{{r}} and~{{ϕ}} as rectangular coordinates
  for the purposes of doing numerics.
  This is not merely a re-labelling of the coordinates.
  ----

73.
  ----
  [Page~133, after~(8.11)]:
  ----
  """"{.examiner}
  what do you mean [by "𝕟~is to~𝔻  as [[n]]~is to~[[del]]"]?
  Explicitly write it out.
  """"
  ----
  [NO] I mean that 𝕟~is the same counterpart to the 𝔻~operator
  that the physical normal vector~[[n]] is to the physical [[del]]~operator.
  ----

74.
  ----
  [Page~133, last paragraph]:
  ----
  """"{.examiner}
  Not sure what you mean here.
  n and grad have physical meaning regardless of the coordinate system.
  You should be able to transform it to have such a meaning
  in polar coordinates as well.
  """"
  ----
  [NO] The components of the gradient operator ([[del]]) in polar coordinates
  are~∂/∂{{r}} (radial) and~(1/{{r}})(∂/∂{{ϕ}}) (azimuthal).
  Note in particular the scale factor of~1/{{r}} in the azimuthal component,
  which ensures it has the correct dimensions (reciprocal length)
  for a physical interpretation.
  ----
  ----
  On the other hand, the components of double-struck~𝔻
  are~∂/∂{{r}} (radial) and~∂/∂{{ϕ}} (azimuthal).
  Note that the azimuthal component has no 1/{{r}}~factor
  (because we need things to be formally rectangular).
  The 𝔻~operator is therefore unphysical.
  ----

75.
  ----
  [Page~135, second paragraph]:
  ----
  """"{.examiner}
  but at r=0 you will have 0/0. Is that a problem?
  """"
  ----
  See [Examiner~2 \> Viva Voce \> Suggestion~6](#indeterminate).
  ----

76.
  ----
  [Page~137, after~(8.28)]:
  ----
  """"{.thesis}
  where [...]
  <del>is the de-singularised version</del>\
  <ins class="examiner">is non-singular for small {{r}}</ins>.
  """"
  ----
  [NO] The terminology "de-singularised version" is introduced
  so that we have a succinct term to describe expressions
  for which the {{r}} = 0 singularity has been removed.
  Such variables are consistently marked with a tilde.
  ----

77.
  ----
  [Page~138, first line]
  ----
  """"{.thesis}
  We now proceed to
  <del>actually performing</del><ins class="examiner">the</ins>
  boundary tracing. [...]
  """"
  ----
  [NO] The suggested edit removes meaning.
  In the previous Section~8.2.1 we did the setup for boundary tracing.
  Now we are actually doing the boundary tracing.
  Hence "actually performing".
  ----

78.{#de-singularised}
  ----
  [Page~138, after~(8.32)]:
  ----
  """"{.thesis}
  [...] according to the
  <del>de-singularised</del><ins class="examiner">non-singular</ins>
  expressions [...]
  """"
  ----
  [NO] The suggested edit removes subtle meaning.
  "De-singularised" indicates a non-singular expression
  that was previously singular.
  "Non-singular" just indicates a non-singular expression.
  ----

79.
  ----
  [Page~139, after~(8.34)]:
  ----
  """"{.thesis}
  With the
  <del>de-singularised</del><ins class="examiner">non-singular</ins>
  flux [...]
  """"
  ----
  [NO] See [Suggestion~78](#de-singularised) above.
  ----

80.
  ----
  [Page~144, Section~8.3]:
  ----
  """"{.examiner}
  I would consider restructuring this chapter.
  As you concede, most things prior to 8.3
  are no different than for a moderate wedge
  so I would consider renaming Chapter 6 "Moderate and small wedges"
  and then making everything prior to 8.3 a section of chapter 6.
  You can then have a separate chapter on "General modification of a corner"
  """"
  ----
  [NO] The 1/{{r}}~singularity of the small wedge
  is more than enough to merit a separate chapter (per the existing structure).
  The appearance of "General modification of a corner"
  as a section within the small wedge chapter
  reflects the chronology of the actual research process I went through.
  ----

81.
  ----
  [Page~145, paragraph before Section~8.3.1]:
  ----
  """"{.examiner}
  ["rare theoretical gem" is] awkward
  """"
  ----
  [NO] I disagree. Must scientific writing be robotic?
  ----

82.
  ----
  [Page~148, second-last line]:
  ----
  """"{.thesis}
  As before, <del>our stubborn insistence on</del> avoiding sharp corners
  has been a major restriction.
  [...]
  """"
  ----
  [NO] The suggested edit changes the meaning.
  ----

83.
  ----
  [Page~148, last line]:
  ----
  """"{.thesis}
  [...]
  <del>Remembering</del><ins class="examiner">Recalling</ins>
  the usefulness of the results that emerged [...].
  """"
  ----
  [NO]
  ----

84.
  ----
  [Page~149]:
  ----
  """"{.examiner}
  I think some more context is needed here
  to explain the value of section 8.3.
  Are non-rounded corners of practical interest
  or is this just a mathematical exercise
  (it's okay if it is, but you should be honest).
  Similarly what is the value of the bounded height?
  """"
  ----
  [NO] General modifications (including truncations)
  are easy to do practically.
  The value of the reults here is high
  given the scarcity of explicit analytical results
  described in the capillarity introduction (Section~1.3).
  We now know how to modify a corner
  so as to ensure that the height rise does not increase.
  ----

85.
  ----
  [Page~151, middle]:
  ----
  """"{.thesis}
  [...]
  These results have been <del>solidly backed</del>\
  <ins class="examiner">supported</ins>
  by numerical verification using finite elements.
  [...]
  """"
  ----
  [NO] This is not hyperbole; "supported" is unfairly restrained.
  ----

86.
  ----
  [Page~152, bottom]:
  ----
  """"{.examiner}
  But many of the ODEs you solve are done so numerically.
  Of course solving ODEs is easier than solving PDEs,
  but the restrictions of the method might make this cost-savings
  not as large as you state.
  You should elaborate on this here.
  """"
  ----
  [NO] This issue has been addressed earlier in the page
  ("While it seems pointless to produce traced boundaries
  from a known solution that has been computed numerically [...]").
  The finishing paragraph merely observes that,
  given an already-computed numerical solution to a boundary value problem,
  we may as well apply boundary tracing to it.
  ----

87.
  ----
  [Page~164]:
  ----
  """"{.examiner}
  A section needs to be added in the introduction
  that outlines the novelty of the thesis.
  There are many references to the works of Anderson
  and the author's previous work [39]
  that make it difficult to discern what is new work and what is old.
  """"
++++++++++++++++


### \h3-defence ###

++++++++++++++++{.revisions}
1.
  """"{.examiner}
  [Page~11]
  Suggest second figure showing that the normal vector is
  the normal (\*in\* the plane) to the diagonal of the rectangle in Figure~2.1
  (rather than the normal \*to\* the plane).
  """"
  ----
  [NO] A second figure is not necessary.
  The context already makes it clear that [[n]]
  is the normal *in* the plane rather than *to* the plane:
  ----
  ====
  - The introductory Section~1.1 [Page~1] expounds boundary tracing
    as a theory for flux boundary conditions in two dimensions.
  - The normal vector [[n]], as it appears in equation~(1.1) [Page~1],
    is clearly a normal *in* the plane:
    """"{.thesis}
    Consider a BVP, consisting of a PDE in some two-dimensional domain~{{Ω}}
    together with the boundary condition
    ||||{.display-equation}
      [[n]] [[.]] [[del]]{{T}} = {{F}}\,({{x}}, {{y}}, {{T}}, ||[[del]]{{T}}||)
        ((1.1))
    ||||
    on its boundary ∂{{Ω}}, [...].
    """"
  - The beginning of Section~2.1 [Page~11] refers explicitly to equation~(1.1).
    Thus the [[n]] in equation~(2.1) [Page~11] is the same [[n]]
    as that in~(1.1).
  ====

2.
  """"{.examiner}
  [Page~37-ish, or Page~43]
  Suggest remark about Mathematica not being able to
  readily handle self-viewing (non-local) boundary conditions,
  so the approach of verifying that self-viewing radiation is small
  after boundary tracing is a powerful one.
  (Actual wording: it was a "checkmark" for boundary tracing.)
  """"
  ----
  [NO] This suggestion arose from a discussion about
  how good the numerical method (using Mathematica) was,
  and whether I could have done an extra example for a self-viewing case.
  Now, Part~I of the thesis applies boundary tracing to analytic solutions,
  producing *exact* results (in that we reduce the problem
  to integrating some ODEs, which can be done to any desired precision).
  The numerical work is simply there to *verify* those results;
  we are not pitting boundary tracing and numerics against each other.
  Since the numerical work plays only a supporting role,
  it should not be elevated by a comparison of what it can or cannot do
  compared to the {boundary tracing + verify error} approach.
  ----

3.{#absolute}
  """"{.examiner}
  [Page~58]
  Suggest taking absolute value of 'Relative error' in Figure~4.12
  so that everything is positive.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/9c391b0>
  for the changes to Figure~4.12.
  ----
  ''''
  |^
    ==
      ; Before
      ; After
  |:
    ==
      , ![Figure 4.12 before](line-verification-relative-error-BEFORE.png)
      , ![Figure 4.12 after](line-verification-relative-error-AFTER.png)
  ''''
  ----
  For consistency, I have also done the same
  for 'Relative error' in Figure~5.10 [Page~75];
  see b<https://github.com/yawnoc/phd-thesis/commit/0e729fa>.
  ----
  ''''
  |^
    ==
      ; Before
      ; After
  |:
    ==
      , ![Figure 5.10 before](bipolar-verification-relative-error-BEFORE.png)
      , ![Figure 5.10 after](bipolar-verification-relative-error-AFTER.png)
  ''''

4.{#conventional}
  """"{.examiner}
  [Page~110]
  Suggest articulating that boundary tracing results are
  not for perfectly circular roundings.
  """"
  ----
  [NO] This is already in the text [Page~109, last paragraph],
  literally the sentence after the reference to Figure~6.31
  (which could not fit on the same page):
  ----
  """"{.thesis}
  [...]
  Figure 6.31 displays such a comparison for ({{α}}, {{γ}}{dot}) = (60°, 75°).
  The two approaches do not give exactly the same height rises because
  the rounding curves produced by boundary tracing are not perfectly circular.
  [...]
  """"
  """"{.examiner}
  [Page~110]
  Suggest a remark about the range of radii covered by 'Boundary tracing'
  versus 'Conventional'.
  """"
  ----
  [NO] Also already in the text [Page~108, last line onwards]:
  ----
  """"{.thesis}
  [...]
  Evidently the range of rounding radii
  which can be accounted for in this manner [boundary tracing]
  is directly related to the spread of the corner roundings,
  over which we have no control.
  The main weakness of boundary tracing is that
  one cannot predetermine the shape of the resulting traced boundaries,
  but this is to be expected for a method where, by its very nature,
  boundary shape is the unknown.
  """"
  """"{.examiner}
  [Page~110]
  Suggest also some remark on computation time of BVPs versus ODEs.
  """"
  ----
  [NO] I did not feel this was necessary.
  It is well known that (PDE) BVPs
  are much more difficult to solve than ODE (IVP)s,
  whether analytically or numerically.
  ----

5.{#non-smooth}
  """"{.examiner}
  [Page~122]
  Suggest remark about why the curves in Figure~7.17 are not smooth.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/2c5461c>
  for the changes to the LaTeX source. [Page~122]:
  ----
  """"{.thesis}
  [...] along each pseudo-rounding,
  we may obtain a family of height-rise profiles
  as shown in Figure~7.17.
  <ins>\
    The non-smoothness of the profiles
    is caused by insufficient mesh refinement
    in the original (non-offset) wedge,
    in the vicinity of each pseudo-rounding.\
  </ins>
  """"

6.{#indeterminate}
  """"{.examiner}
  [Page~135]
  Suggest improvement of wording to clarify that {{H}} = 0 is necessary
  but not sufficient to eliminate the 1/{{r}} singularity at {{r}} = 0.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/4e424e1>
  for the changes to the LaTeX source. [Page~135, Paragraph~2]:
  ----
  """"{.thesis}
  [...]
  The Dirichlet condition~(8.18) therefore reduces to {{H}} = 0,
  <del>and the singularity at~{{r}} = 0 is eliminated</del>\
  <ins>which is consistent with an elimination of the singularity
  at~{{r}} = 0</ins>.
  [...]
  """"
++++++++++++++++


## Self-imposed changes ##

++++++++++++++++{.revisions}
1.
  ----
  Fixed Figure~C.2 vertical axis range
  so that the bottom is exactly {{T}} = 0:
  ----
  ''''
  |^
    ==
      ; Before
      ; After
  |:
    ==
      , ![Figure C.2 before](conformal_triangle-known-solution-BEFORE.png)
      , ![Figure C.2 after](conformal_triangle-known-solution-AFTER.png)
  ''''
  ----
  See b<https://github.com/yawnoc/phd-thesis/commit/fda4ebd>.
  ----
++++++++++++++++
