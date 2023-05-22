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

\newlist{subproblems}{enumerate}{3}
\setlist[itemize]{left=1em}
\setlist[subproblems]{left=.25em}
\setlist[subproblems, 1]{label=[\alph*], ref=[\arabic{problem}.\alph*]}
\setlist[subproblems, 2]{label=[\roman*], ref=[\arabic{problem}.\alph{subproblemsi}.\roman*]}
\crefname{subproblemsi}{part}{parts}
\crefname{subproblemsii}{part}{parts}

\tcbuselibrary{theorems}
\tcbuselibrary{breakable}
\tcbuselibrary{xparse}
\tcbsetforeverylayer{
  content box/.style={
      boxrule=.5pt,
      common,
      opacityback=0,
      colframe=black,
      opacitybacktitle=1/8,
      coltitle=black,
      opacityframe=1/4,
    },
  sharp corners,
  boxsep=0pt,
  breakable,
  ks/named box/.style n args={3}{
      title={#1 \thetcbcounter},
      ks/name/.style={/tcb/title={#1 \thetcbcounter: ##1}},
      ks/label/.style={/tcb/.cd,label={#2:##1},/tcb/ks/.cd},
      /tcb/ks/.cd,
      #3,
      /tcb/.cd,
    },
}
\newcounter{problem}
\newtcolorbox[use counter=problem, crefname={problem}{problems}]{problem}[1][]{
  bookmark={Problem \thetcbcounter},
  theorem box,
  ks/named box={Problem}{pr}{#1},
}
\newenvironment{solution}{}{\newpage}
\newcounter{theorem}
\newtcolorbox[auto counter, number within=problem, crefname={lemma}{lemmas}]{lemma}[1][]{
  outline box,
  colframe=teal,
  ks/named box={Lemma}{lem}{#1},
}
\newtcolorbox[auto counter, number within=problem, crefname={corollary}{corollaries}]{corollary}[1][]{
  outline box,
  colframe=teal,
  ks/named box={Corollary}{cor}{#1},
}

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
}
