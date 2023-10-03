% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks-notes}[2021-07-31 Kye's documentclass for digital notes]

\LoadClass{ks}

\geometry{left=1in, right=2.5in}
\fancyhfoffset{0pt}
% https://tex.stackexchange.com/questions/598223/help-with-fancyhdr-on-custom-page-sizes

\RequirePackage{ks-tcb}

\newcommand\ks@NewTheorem[6]{%
  \newtcolorbox[auto counter, number within=section, crefname={#2}{#3}]{#1}[1][]{%
    outline box,%
    colframe=#4,%
    ks/named box={#5}{#6}{##1},%
  }%
}
\ks@NewTheorem{definition}{definition}{definitions}{teal}{Definition}{def}

\pgfkeys{
  /ks/tcb/theorem/.cd,
}

%\newtcolorbox[auto counter, number within=section, crefname={definition}{definitions}][1][]{definition}{
%  outline box,
%  colframe=teal,
%  ks/named box={Lemma}{lem}{#1},
%}

%\newtcbtheorem[crefname={definition}{definitions}]{definition}{Definition}{
%  theorem box=teal!25,
%}{def}
\newtcbtheorem[crefname={algorithm}{algorithms}]{algorithm}{Algorithm}{
  theorem box=teal!25,
}{alg}

\NewTColorBox[auto counter, crefname={theorem}{theorems}]{theorem}{d() o}{
  IfValueTF={#1}{title={Theorem \thetcbcounter \normalfont\itshape(#1)}}{title={Theorem \thetcbcounter}},
  IfValueT={#2}{label={th:#2}},
  theorem box,
}
\NewTColorBox[auto counter, crefname={lemma}{lemmas}]{lemma}{d() o}{
  IfValueTF={#1}{title={Lemma \thetcbcounter \normalfont\itshape(#1)}}{title={Lemma \thetcbcounter}},
  IfValueT={#2}{label={lem:#2}},
  theorem box,
}

\newcommand\Term\textbf
