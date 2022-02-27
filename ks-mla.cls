% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks-mla}[2020-09-01 Kye's MLA-style documentclass]

\LoadClass[12pt]{extarticle}

\RequirePackage{xcolor}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{thmtools}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.5in,
  bottom=.5in,
  includeheadfoot,
  headsep=.5em,
  headheight=1.5em,
}

\RequirePackage{xparse}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\fancypagestyle{mla}{
  \fancyhf{}
  \rhead{\ks@authorshort{} \thepage}
  \renewcommand{\headrule}{}
}
\pagestyle{mla}
\AtBeginDocument{%
  \noindent%
  \ks@author\\%
  \ks@instructor\\%
  \ks@course\\%
  \ks@date\par%
  {\centering\ks@title\par}%
}

\newcommand*\ks@title{\ClassError{ks-mla}{Missing \noexpand\title}}
\newcommand*\ks@author{\ClassError{ks-mla}{Missing \noexpand\author}}
\newcommand*\ks@authorshort{\ClassError{ks-mla}{Missing \noexpand\authorshort}}
\newcommand*\ks@date{\ClassError{ks-mla}{Missing \noexpand\date}}
\newcommand*\ks@instructor{\ClassError{ks-mla}{Missing \noexpand\instructor}}
\newcommand*\ks@course{\ClassError{ks-mla}{Missing \noexpand\course}}
\renewcommand{\title}[1]{\renewcommand*\ks@title{#1}}
\renewcommand{\author}[1]{\renewcommand*\ks@author{#1}}
\renewcommand{\date}[1]{\renewcommand*\ks@date{#1}}
\newcommand{\authorshort}[1]{\renewcommand*\ks@authorshort{#1}}
\newcommand{\instructor}[1]{\renewcommand*\ks@instructor{#1}}
\newcommand{\course}[1]{\renewcommand*\ks@course{#1}}

\RequirePackage{microtype}

\RequirePackage{libertinus}
\RequirePackage{fontspec}

% disable ligatures: <https://tex.stackexchange.com/questions/250771/handling-of-in-minted>
% fix glyphs: <https://tex.stackexchange.com/questions/633070/fontspec-juliamono-missing-glyphs-in-lualatex-compared-to-xelatex/633072#633072>
\defaultfontfeatures{}
\setmonofont{JuliaMono}[%
Scale=MatchLowercase,%
Extension=.ttf,%
UprightFont=*-Regular,%
BoldFont=*-Bold,%
ItalicFont=*-RegularItalic,%
BoldItalicFont=*-BoldItalic,%
]

%\RequirePackage{lmodern}

\RequirePackage{titlesec}

\RequirePackage{siunitx}

\RequirePackage{url}
\RequirePackage{fancyref}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage[nameinlink]{cleveref}
\hypersetup{
  unicode=true,
  colorlinks=true,
  urlcolor=blue!25!teal,
  linkcolor=green!50!brown!50!black,
}

\linespread{2}
\setlength\parindent{.5in}

\titleformat\section{\bfseries}{\thesection.}{.5em}{}
\titlespacing\section{0em}{1em}{0em}
