% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks}[2020-09-01 Kye's base documentclass]

\LoadClass{extarticle}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.25in,
  bottom=.5in,
  includeheadfoot,
  headsep=.5em,
  headheight=1.5em,
}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\newcommand{\hdrstyle}{\small\color{gray}}
\fancypagestyle{ks}{
  \fancyhf{}
  \lhead{\hdrstyle\bfseries\ifx\mytitle\undefined\else\mytitle\fi}
  \chead{\hdrstyle\scshape\ifx\mysubtitle\undefined\else\mysubtitle\fi}
  \rhead{\hdrstyle\ifx\myauthor\undefined\mbox{}\else\myauthor\fi}
  \rfoot{\hdrstyle\ifx\mydate\undefined\else\mydate\fi}
  \lfoot{\hdrstyle\thepage{} / \pageref{LastPage}}
  \renewcommand{\headrule}{\color{lightgray!50}\hrule}
}
\pagestyle{ks}

\renewcommand{\title}[1]{\newcommand{\mytitle}{#1}}
\renewcommand{\author}[1]{\newcommand{\myauthor}{#1}}
\renewcommand{\date}[1]{\newcommand{\mydate}{#1}}
\newcommand{\subtitle}[1]{\newcommand{\mysubtitle}{#1}}

\RequirePackage{microtype}
\RequirePackage{parskip}

%\RequirePackage{fontspec}
%\RequirePackage{unicode-math}
\RequirePackage{libertinus}
%\setmainfont{Source Serif Pro}
%\setmathfont{LibertinusMath}
%\setmathfont(Digits){Source Serif Pro}
%\usepackage{libertine}
%\usepackage{libertinust1math}
%\RequirePackage[T1]{fontenc}

%\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{titlesec}

\RequirePackage{siunitx}
\AtBeginDocument{\sisetup{
  detect-weight,
  mode=math,
  math-rm=\mathrm,
  text-rm=\rmfamily,
  text-sf=\rmfamily,
  math-sf=\mathrm,
}}

\RequirePackage{ks}

