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
    margin-bottom: 0;
    padding: 0.3em 0.5em;
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
    font-size: 1.4em;
    margin: 0.3em auto;
    text-align: center;
  }
  h2 {
    font-size: 1.33em;
    margin-top: 2em;
  }
  h1 + h2 {
    margin-top: 0;
  }
  h3 {
    font-size: 1.2em;
    margin-top: 1.3em;
  }
  ins {
    border: var(--dotted-line);
    color: #050;
    margin: 0 0.15em;
    padding: 0 0.1em;
    text-decoration: none;
  }
  ol, ul {
    margin: 0.3em 0;
    padding-left: 1.7em;
  }
  li > p {
    margin-bottom: 0.5em;
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

# Ph.D. Thesis Revisions #


## Examiner~1 (A.B.) ##


### \h3-exam ###

++++++++++++++++
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
  Indeed Examiner~1 awarded a straight 'Pass'
  rather than a 'Pass subject to minor revision'.
  ----
++++++++++++++++


### \h3-defence ###

++++++++++++++++
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
  those which do not reach the <del>{{x}}-axis ({{y}} = 0)</del>\
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


## Examiner~2 (I.M.) ##


### \h3-exam ###


### \h3-defence ###

++++++++++++++++
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

3.
  """"{.examiner}
  [Page~58]
  Suggest taking absolute value of 'Relative error' in Figure~4.12
  so that everything is positive.
  """"

4.
  """"{.examiner}
  [Page~110]
  Suggest articulating that boundary tracing results are
  not for perfectly circular roundings.
  """"
  """"{.examiner}
  [Page~110]
  Suggest a remark about the range of radii covered by 'Boundary tracing'
  versus 'Conventional'.
  """"
  """"{.examiner}
  [Page~110]
  Suggest also some remark on computation time of BVPs versus ODEs.
  """"

5.
  """"{.examiner}
  [Page~122]
  Suggest remark about why the curves in Figure~7.17 are not smooth.
  """"

6.
  """"{.examiner}
  [Page~135]
  Suggest improvement of wording to clarify that {{H}} = 0 is necessary
  but not sufficient to eliminate the 1/{{r}} singularity at {{r}} = 0.
  """"
++++++++++++++++
