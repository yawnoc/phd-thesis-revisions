%%%%%%%%%%%%%%%%
%title
  revisions

%resources
  <script src="paged.polyfill.js"></script>

%css a~~~~~~~~
  :root {
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
    padding: 0.05em 0.2em;
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
  [NO] This suggestion was optional.
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
++++++++++++++++
