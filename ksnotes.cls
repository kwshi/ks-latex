% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ksnotes}[2021-07-31 Kye's documentclass for digital notes]

\LoadClass{ks}

\geometry{left=.5in, right=3in}
\fancyhfoffset{0pt}
% https://tex.stackexchange.com/questions/598223/help-with-fancyhdr-on-custom-page-sizes

\tcbuselibrary{theorems}
\newtcbtheorem[crefname={definition}{definitions}]{definition}{Definition}{
  theorem box=teal!25,
}{def}

\newcommand\Term\textbf
