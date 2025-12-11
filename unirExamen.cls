\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unirExamen}

\LoadClass[11pt,a4paper]{exam}

\RequirePackage{amsmath,amssymb,amsthm,color}
\usepackage{fontspec}
\usepackage{inputenc}
\usepackage[spanish]{babel}
\usepackage{etoolbox}

\newcommand\asignatura[1]{\def\@asignatura{#1}}
\newcommand\per[1]{\def\@per{#1}}

\definecolor{azulunir}{RGB}{0, 152, 205}
\definecolor{grisunir}{RGB}{119, 119, 119}
\definecolor{azulflojounir}{RGB}{230,244,249}

\setmainfont{calibri}[
  Path = res/fonts/,
  Extension = .ttf,
  UprightFont = *,
  BoldFont = *b,
  ItalicFont = *i,
  BoldItalicFont = *z
]

\renewcommand{\labelitemi}{\small\color{azulunir}{$\blacktriangleright$}}
\renewcommand{\labelitemii}{\small\color{azulunir}{\textbullet}}
\renewcommand{\labelenumi}{\color{azulunir}{\textbf{\theenumi}.}}

\pointpoints{punto}{puntos}
\renewcommand{\solutiontitle}{\textbf{Solución: }}

\newcommand{\codigonombreord}[2]{#1 & ALCC\_PER\@per\_MOD#1\_ORD & \texttt{#2}}
\newcommand{\codigonombreext}[2]{#1 & ALCC\_PER\@per\_MOD#1\_EXT & \texttt{#2}}