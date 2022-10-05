% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks-pset}[2021-07-31 Kye's documentclass for problem-set printouts]

\LoadClass{ks}

% https://tex.stackexchange.com/questions/123447/pdf-bookmarks-for-thmtools-theorems
\newcommand*{\ProblemBookmark}{%
  \bookmark[dest=\@currentHref, rellevel=1, keeplevel]{%
    \thmt@thmname\space\csname the\thmt@envname\endcsname%
    \ifx\@currentlabelname\@empty\else\space(\@currentlabelname)\fi%
  }%
}

\declaretheoremstyle[bodyfont=\normalfont]{theorem}
\declaretheoremstyle[bodyfont=\normalfont, headfont=\scshape, bodyfont=\small]{hint}
\declaretheorem[style=hint, numbered=no]{hint}
\declaretheorem[style=hint, numbered=no]{note}
%\declaretheorem[style=theorem]{lemma}

\newlist{subproblems}{enumerate}{3}
\setlist[subproblems]{left=.25em}
\setlist[subproblems, 1]{label=(\alph*), ref=(\arabic{problem}.\alph*)}
\setlist[subproblems, 2]{label=(\roman*), ref=(\arabic{problem}.\alph{subproblemsi}.\roman*)}
\crefname{subproblemsi}{part}{parts}
\crefname{subproblemsii}{part}{parts}

\tcbuselibrary{theorems}
\tcbuselibrary{breakable}
\tcbsetforeverylayer{
  no rules/.style={
    boxrule=0pt,
    opacityframe=0,
  },
  no padding/.style={
    top=0pt,
    bottom=0pt,
    left=0pt,
    right=0pt,
  },
  theorem box/.style={
    enhanced jigsaw,
    fonttitle=\bfseries,
    toptitle=1em/2,
    bottomtitle=1em/2,
    colbacktitle=black,
    opacitybacktitle=1/8,
    boxsep=0pt,
    top=1em/2,
    bottom=3em/4,
    left=1em,
    right=1em,
    boxrule=0pt,
    titlerule=0pt,
    colframe=black,
    opacityframe=0,
    coltitle=black,
    colback=black,
    opacityback=1/16,
  },
  sharp corners,
  parbox=false,
  boxsep=0pt,
  breakable,
}
\newcounter{problem}
\newtcolorbox[use counter=problem, crefname={problem}{problems}]{problem}[2]{
  bookmark={Problem \thetcbcounter},
  title={Problem \thetcbcounter},
  label={pr:#2},
  theorem box,
  no rules,
}
\newenvironment{solution}{}{\newpage}
\newtcbtheorem[number within=problem, crefname={lemma}{lemmas}]{lemma}{Lemma}{
  bookmark={Lemma \thetcbcounter},
  theorem box, colback=teal, colbacktitle=teal, coltitle=teal
}{lem}
%\newtcbtheorem[number within=problem, crefname={claim}{claims}]{claim}{Claim}{theorem}{cl}

\tcolorboxenvironment{proof}{
  boxrule=.5pt,
  left=.5em,
  right=.5em,
  top=0em,
  bottom=0em,
  boxsep=.5em,
  sharp corners,
  breakable,
  parbox=false,
  opacityframe=1/8,
  opacityback=1/16,
  colframe=black,
  enhanced jigsaw,
  %before skip=30pt,
  %after skip=30pt,
}
