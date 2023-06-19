% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks-paper}[2022-04-24 Kye's document class for short-ish papers]

\LoadClass{extarticle}

\RequirePackage{ks}

\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{thmtools}

\RequirePackage{biblatex}
\RequirePackage{fancyref}
\RequirePackage{hyperref}
\RequirePackage[nameinlink]{cleveref}

\RequirePackage{geometry}
\geometry{
  hmargin=1in,
  top=.5in,
  bottom=.5in,
  includeheadfoot,
}

\RequirePackage{xparse}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}

\RequirePackage{microtype}
\RequirePackage{parskip}

\RequirePackage{fontspec}
\RequirePackage[math-style=ISO]{unicode-math}
\renewcommand\familydefault\sfdefault
\setmathfont{STIXTwoMath}[Scale=MatchLowercase]
\setmainfont{STIXTwoText}[Scale=MatchLowercase]
\setsansfont{LibertinusSans}[
  Scale=1,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-Bold,
  ItalicFont=*-Italic,
]

\newcommand{\ks@hdrstyle}{\small\color{gray!50!black}}
\fancypagestyle{ks}{
  \fancyhf{}
  \renewcommand\headrule{}
  \rfoot{\small\color{gray!50!black}page \thepage{} of \pageref{LastPage}}
  %\fancyhf{}
  %\lhead{\ks@hdrstyle\bfseries\ifx\ks@title\undefined\else\ks@title\fi}
  %\chead{\ks@hdrstyle\scshape\ifx\ks@subtitle\undefined\else\ks@subtitle\fi}
  %\rhead{\ks@hdrstyle\ifx\ks@author\undefined\mbox{}\else\ks@author\fi}
  %\rfoot{\ks@hdrstyle\ifx\ks@date\undefined\else\ks@date\fi}
  %\lfoot{\ks@hdrstyle\thepage{} / \pageref{LastPage}}
  %\renewcommand{\headrule}{\color{lightgray}\hrule}
}
\pagestyle{ks}

\newcommand\ks@title{\ClassError{ks-paper}{Missing \noexpand\title}}
\newcommand\ks@author{\ClassError{ks-paper}{Missing \noexpand\author}}
\newcommand\ks@date{\ClassError{ks-paper}{Missing \noexpand\date}}

\renewcommand\title[1]{\renewcommand\ks@title{#1}}
\renewcommand\author[1]{\renewcommand\ks@author{#1}}
\renewcommand\date[1]{\renewcommand\ks@date{#1}}

\newcommand\institution[1]{\newcommand\ks@institution{#1}}
\newcommand\subtitle[1]{\newcommand\ks@subtitle{#1}}

\renewcommand\maketitle{
\begin{minipage}{6in}
  \Large\bfseries\ks@title
\end{minipage}
\\[1em]
{%
\large\ks@author%
\ifx\ks@institution\undefined\\[.5em]\else%
  \quad\textcolor{gray!50!black}{\textsc{\ks@institution}}%
\fi%
\textcolor{gray!50!black}{\ks@date}%
}\\[1em]
}

\setlist[enumerate, 1]{label=(\arabic*)}

\tcbsetforeverylayer{
  ks/named box/.style n args={3}{
      title={#1 \thetcbcounter},
      ks/name/.style={/tcb/title={#1 \thetcbcounter: ##1}},
      ks/label/.style={/tcb/.cd,label={#2:##1},/tcb/ks/.cd},
      /tcb/ks/.cd,
      #3,
      /tcb/.cd,
    },
}
\newtcolorbox[auto counter, number within=section, crefname={lemma}{lemmas}]{lemma}[1][]{
  outline box,
  colframe=teal,
  ks/named box={Lemma}{lem}{#1},
}
\newtcolorbox[auto counter, number within=section, crefname={theorem}{theorems}]{theorem}[1][]{
  outline box,
  colframe=teal,
  ks/named box={Theorem}{th}{#1},
}
\newtcolorbox[auto counter, number within=section, crefname={definition}{definitions}]{definition}[1][]{
  outline box,
  colframe=teal,
  ks/named box={Definition}{def}{#1},
}

\AtBeginDocument{\maketitle}
