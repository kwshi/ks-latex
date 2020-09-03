\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks}[2020/09/01 my standard class]

\LoadClass{extarticle}
  
\RequirePackage{ks}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.5in,
  bottom=.75in,
  includeheadfoot,
  headsep=2em,
}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titling}
\fancypagestyle{ks}{
  \fancyhf{}
  \lhead{\textbf{\mytitle}}
  \rhead{\footnotesize\theauthor\\\thedate}
  \rfoot{\small\thepage{} / \pageref{LastPage}}
}
\pagestyle{ks}

\renewcommand{\title}[1]{\newcommand{\mytitle}{#1}}

\RequirePackage{microtype}
\RequirePackage{parskip}

\RequirePackage[ascii]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{lmodern}
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
