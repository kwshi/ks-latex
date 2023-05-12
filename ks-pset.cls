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
  parbox=false,
  boxsep=0pt,
  breakable,
}
\newcounter{problem}
\NewTColorBox[use counter=problem, crefname={problem}{problems}]{problem}{ d() o }{
  bookmark={Problem \thetcbcounter},
  IfValueTF={#1}{title={Problem \thetcbcounter: #1}}{title={Problem \thetcbcounter}},
  IfValueT={#2}{label={pr:#2}},
  theorem box,
}
\newenvironment{solution}{}{\newpage}
\newtcolorbox[auto counter, number within=problem, crefname={lemma}{lemmas}]{lemma}[1][]{
  outline box,
  colframe=teal,
  ks/.cd,
  #1
}
%\newtcbtheorem[number within=problem, crefname={lemma}{lemmas}]{lemma}{Lemma}{
%  bookmark={Lemma \thetcbcounter},
%  theorem box, colback=teal, colbacktitle=teal, coltitle=teal
%}{lem}
\newtcbtheorem[number within=problem, crefname={corollary}{corollaries}]{corollary}{Corollary}{
  bookmark={Corollary \thetcbcounter},
  theorem box, colback=teal, colbacktitle=teal, coltitle=teal
}{cor}

\newtcbtheorem[number within=problem, crefname={algorithm}{algorithms}]{algorithm}{Algorithm}{
  bookmark={Algorithm \thetcbcounter},
  content box,
}{alg}

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
