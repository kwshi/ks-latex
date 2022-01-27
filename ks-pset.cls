% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks-pset}[2021-07-31 Kye's documentclass for problem-set printouts]

\LoadClass{ks}

\newcommand*{\ProblemBookmark}{%
  \bookmark[dest=\@currentHref, rellevel=1, keeplevel]{%
    Problem \csname the\thmt@envname\endcsname%
  }%
}

\declaretheoremstyle[bodyfont=\normalfont]{problem}
\declaretheorem[style=problem, postheadhook=\ProblemBookmark]{problem}
\declaretheoremstyle[bodyfont=\normalfont, headfont=\scshape, bodyfont=\small]{hint}
\declaretheorem[style=hint, numbered=no]{hint}
\declaretheorem[style=hint, numbered=no]{note}

\newlist{subproblems}{enumerate}{3}
\setlist[subproblems, 1]{label=(\alph*), ref=(\arabic{problem}.\alph*)}
\setlist[subproblems, 2]{label=(\roman*), ref=(\arabic{problem}.\alph{subproblemsi}.\roman*)}

\tcbuselibrary{breakable}
\tcbsetforeverylayer{
  no rules/.style={
    toprule=0pt,
    leftrule=0pt,
    rightrule=0pt,
    bottomrule=0pt,
    opacityframe=0,
  },
  no padding/.style={
    top=0pt,
    bottom=0pt,
    left=0pt,
    right=0pt,
  },
  theorem/.style={
    before upper=\vspace{-\parskip},
  },
  aside/.style={
    standard jigsaw,
    opacityback=0,
    colframe=black,
    opacityframe=1/8,
    top=0em,
    bottom=1em/2,
    leftrule=1em/4,
    toprule=0pt,
    bottomrule=0pt,
    rightrule=0pt,
  },
  sharp corners,
  parbox=false,
  boxsep=0pt,
  breakable,
}
\tcolorboxenvironment{problem}{
  theorem,
  colback=black,
  opacityback=1/16,
  top=1em/2,
  bottom=1em,
  no rules,
}
