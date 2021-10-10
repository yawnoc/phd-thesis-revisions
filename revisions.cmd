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
  ol {
    margin: 0.3em 0;
    padding-left: 1.7em;
  }
  .action {
    border: var(--solid-line);
    margin-right: 0.15em;
    padding: 0.05em 0.2em;
  }
  .examiner {
    color: var(--text-grey);
    border-color: var(--line-grey);
    font-family: Arimo, sans-serif;
  }
~~~~~~~~
%%%%%%%%%%%%%%%%

{: \h3-exam : Suggestions from Examiner's Report :}
{: \h3-defence : Suggestions from Viva Voce :}

{: [NO] : <span class="action">Not adopted.</span> :}
{: [YES] : <span class="action">Adopted.</span> :}


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


## Examiner~2 (I.M.) ##


### \h3-exam ###


### \h3-defence ###
