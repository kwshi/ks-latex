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
\declaretheoremstyle[bodyfont=\normalfont]{theorem}
\declaretheorem[style=problem, postheadhook=\ProblemBookmark]{problem}
\declaretheoremstyle[bodyfont=\normalfont, headfont=\scshape, bodyfont=\small]{hint}
\declaretheorem[style=hint, numbered=no]{hint}
\declaretheorem[style=hint, numbered=no]{note}
%\declaretheorem[style=theorem]{lemma}

\newlist{subproblems}{enumerate}{3}
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
  theorem/.style={
    before upper=\vspace{-\parskip},
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
\newtcolorbox{solution}{
  after=\newpage,
  opacityback=0,
  no rules,
  no padding,
}
\newtcbtheorem[number within=problem, crefname={lemma}{lemmas}]{lemma}{Lemma}{
  boxrule=1pt/2,
  titlerule=0pt,
  standard jigsaw,
  colframe=black,
  opacityframe=1/8,
  coltitle=black,
  colbacktitle=black,
  opacitybacktitle=1/16,
  fonttitle=\bfseries,
  opacityback=0,
  toptitle=1em/2,
  bottomtitle=1em/2,
}{lem}
