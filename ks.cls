% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks}[2020-09-01 Kye's base documentclass]

\LoadClass{article}

\RequirePackage{ks}

\RequirePackage{amsfonts}
\RequirePackage{mathtools}

\RequirePackage{geometry}
\geometry{
  hmargin=1in,
  top=.25in,
  bottom=.5in,
  includeheadfoot,
  headsep=1em,
  headheight=3em,
}

\RequirePackage{xparse}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\newcommand{\ks@hdrstyle}{\small\color{gray!50!black}}
\fancypagestyle{ks}{
  \fancyhf{}
  \lhead{%
    \ks@hdrstyle%
    {\bfseries\ifx\ks@title\undefined\else\ks@title\fi}%
    \ifx\ks@subtitle\undefined\else{\\\scshape\ks@subtitle}\fi
  }
  %\chead{\ks@hdrstyle\scshape\ifx\ks@subtitle\undefined\else\ks@subtitle\fi}
  \rhead{%
    \ks@hdrstyle\ifx\ks@author\undefined\mbox{}\else\ks@author\fi%
    \ifx\ks@date\undefined\else{\\\scshape\ks@date}\fi%
  }
  \rfoot{\ks@hdrstyle\thepage{} / \pageref{LastPage}}
  \renewcommand{\headrule}{\vspace{.25em}\color{lightgray}\hrule}
}
\pagestyle{ks}

\renewcommand{\title}[1]{\newcommand{\ks@title}{#1}}
\renewcommand{\author}[1]{\newcommand{\ks@author}{#1}}
\renewcommand{\date}[1]{\newcommand{\ks@date}{#1}}
\newcommand{\subtitle}[1]{\newcommand{\ks@subtitle}{#1}}

\RequirePackage{microtype}
\RequirePackage{parskip}

\RequirePackage{fontspec}
\RequirePackage[math-style=ISO]{unicode-math}
%\RequirePackage{libertinus}
\defaultfontfeatures{Scale=MatchLowercase}
\setmathfont{STIXTwoMath-Regular.otf}
\setmainfont{STIXTwoText-Regular.otf}
\setsansfont{LibertinusSans}[
  Scale=1,
  Extension=.otf,
  UprightFont=*-Regular,
  BoldFont=*-Bold,
  ItalicFont=*-Italic,
]

% disable ligatures: <https://tex.stackexchange.com/questions/250771/handling-of-in-minted>
% fix glyphs: <https://tex.stackexchange.com/questions/633070/fontspec-juliamono-missing-glyphs-in-lualatex-compared-to-xelatex/633072#633072>
\defaultfontfeatures{}
\setmonofont{JuliaMono}[%
  Scale=MatchLowercase,%
  %Extension=.ttf,%
  %UprightFont=*-Regular,%
  %BoldFont=*-Bold,%
  %ItalicFont=*-RegularItalic,%
  %BoldItalicFont=*-BoldItalic,%
]

\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{titlesec}

\RequirePackage{siunitx}

\RequirePackage{url}
\RequirePackage{fancyref}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{caption}
\RequirePackage[noabbrev]{cleveref}
\hypersetup{
  unicode=true,
  colorlinks=true,
  urlcolor=blue!25!teal,
  linkcolor=green!50!brown!50!black,
}
\crefname{figure}{figure}{figures}
\Crefname{figure}{Figure}{Figures}
