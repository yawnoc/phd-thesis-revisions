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
    margin-left: 0.5em;
    margin-bottom: 0.75em;
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
    font-size: 1.5em;
    margin: 0.5em auto;
    text-align: center;
  }
  h2 {
    font-size: 1.33em;
    margin-top: 1.35em;
  }
  h3 {
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
    margin-top: 1em;
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
  .page-break {
    break-before: page;
    margin-top: 0.5em;
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
Z{: {0} : <sub>0</sub> :}
Z{: {dot} : <sub>•</sub> :} <## U+2022 BULLET ##>


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

----
Other than the above remark,
the examiner only noted "a couple of trivial typographical errors",
but these were not raised at the viva voce.
Afterwards, I twice asked the Chair (M.R.) to request that
the examiner's list of minor corrections be sent through.
I do not understand why the list was not sent through,
and I note that I had no control over how the request for it was worded.
----


### \h3-defence ###

++++++++++++++++{.revisions}
1.
  """"{.examiner}
  [Page 41]
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
  See b<https://github.com/yawnoc/phd-thesis/commit/11b2439>
  for the changes to the LaTeX source.
  ----
++++++++++++++++


##{.page-break} Examiner~2 (I.M.) ##


### \h3-exam ###

++++++++++++++++{.revisions}
1.
  [Page~8, Paragraph~2]:
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

1.
  [Page~8, Paragraph~3]:
  """"{.examiner}
  Can you put a diagram in showing and explaining
  [the Finn \&~Kosmodem'yanskii] modifications?
  """"
  [NO] A diagram *could* be put in,
  but it would not sit suitably within the context of the section
  because the Finn \&~Kosmodem'yanskii modifications
  are not boundary tracing modifications.

1.
  [Page~14, unnumbered equation]:
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

1.
  [Page~19, Figure~3.1]
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

1.{.page-break}
  [Page~21, Paragraph~1, after~(3.15)]
  """"{.thesis}
  [...] consists of the <del>infinite</del><ins class="examiner">finite</ins>
  strip 0 ≤ {{x}} ≤ 1.
  """"
  ----
  [NO] The strip is infinite in the {{y}}-direction.
  ----

1.
  [Page~21, Paragraph~2, before~(3.16)]
  """"{.examiner}
  avoid this kind of subjective language ["boring"] in the thesis :).
  """"
  ----
  [NO] The straight-line boundary ({{x}} = 1) is boring.
  This is no more subjective than saying that it is "trivial",
  but much less highbrow.
  ----

1.
  [Page~21, equation~(3.16)]
  """"{.examiner}
  why not use the arclength formulation here. \|grad(T)=1\|.
  """"
  ----
  [NO] We want analytical results, and we can get them here
  by using coordinate (rather than arc-length) parametrisation.
  ----
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

3.
  """"{.examiner}
  [Page~58]
  Suggest taking absolute value of 'Relative error' in Figure~4.12
  so that everything is positive.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/78e09a1>
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
  see b<https://github.com/yawnoc/phd-thesis/commit/4d19232>.
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

4.
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

5.
  """"{.examiner}
  [Page~122]
  Suggest remark about why the curves in Figure~7.17 are not smooth.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/466ab1d>
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

6.
  """"{.examiner}
  [Page~135]
  Suggest improvement of wording to clarify that {{H}} = 0 is necessary
  but not sufficient to eliminate the 1/{{r}} singularity at {{r}} = 0.
  """"
  ----
  [YES] See b<https://github.com/yawnoc/phd-thesis/commit/7cac581>
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
  Fixed Figure~C.2 vertical axis range
  so that the bottom is exactly {{T}} = 0:
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
++++++++++++++++
