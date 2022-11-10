% vi: ft=tex
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{ksnotes}[2021-07-31 Kye's documentclass for digital notes]

\LoadClass{ks}

\geometry{left=1in, right=2.5in}
\fancyhfoffset{0pt}
% https://tex.stackexchange.com/questions/598223/help-with-fancyhdr-on-custom-page-sizes

\tcbuselibrary{theorems}
\newtcbtheorem[crefname={definition}{definitions}]{definition}{Definition}{
  theorem box=teal!25,
}{def}
\newtcbtheorem[crefname={algorithm}{algorithms}]{algorithm}{Algorithm}{
  theorem box=teal!25,
}{alg}

\newcommand\Term\textbf
