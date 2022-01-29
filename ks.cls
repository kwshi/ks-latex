% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks}[2020-09-01 Kye's base documentclass]

\LoadClass{extarticle}

\RequirePackage{ks}

\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{thmtools}

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

\RequirePackage{xparse}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\newcommand{\hdrstyle}{\small\color{gray}}
\fancypagestyle{ks}{
  \fancyhf{}
  \lhead{\hdrstyle\bfseries\ifx\ks@title\undefined\else\ks@title\fi}
  \chead{\hdrstyle\scshape\ifx\ks@subtitle\undefined\else\ks@subtitle\fi}
  \rhead{\hdrstyle\ifx\ks@author\undefined\mbox{}\else\ks@author\fi}
  \rfoot{\hdrstyle\ifx\ks@date\undefined\else\ks@date\fi}
  \lfoot{\hdrstyle\thepage{} / \pageref{LastPage}}
  \renewcommand{\headrule}{\color{lightgray!50}\hrule}
}
\pagestyle{ks}

\renewcommand{\title}[1]{\newcommand{\ks@title}{#1}}
\renewcommand{\author}[1]{\newcommand{\ks@author}{#1}}
\renewcommand{\date}[1]{\newcommand{\ks@date}{#1}}
\newcommand{\subtitle}[1]{\newcommand{\ks@subtitle}{#1}}

\RequirePackage{microtype}
\RequirePackage{parskip}

\RequirePackage{libertinus}
\RequirePackage{fontspec}
\setmonofont{JuliaMono}[Scale=MatchLowercase]

%\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{titlesec}

\RequirePackage{siunitx}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage[nameinlink]{cleveref}
\hypersetup{
  unicode=true,
  colorlinks=true,
  urlcolor=blue!25!teal,
  linkcolor=green!50!brown!50!black,
}



