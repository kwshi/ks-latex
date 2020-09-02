\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ks}[2020/09/01 my standard class]

\RequirePackage{ks}

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.5in,
  bottom=.5in,
  includeheadfoot,
}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titling}
\fancypagestyle{ks}{
  \fancyhf{}
  \lhead{\textbf{\thetitle}}
  \rhead{\theauthor}
  \lfoot{\small\thedate}
  \rfoot{\small\thepage / \pageref{LastPage}}
}
\pagestyle{ks}

\RequirePackage{microtype}
\RequirePackage{parskip}

\RequirePackage[ascii]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}
