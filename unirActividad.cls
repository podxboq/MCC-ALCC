\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unirActividad}

\LoadClass[11pt,a4paper]{exam}

\RequirePackage{ifthen,amsmath,amssymb,amsthm,bm,graphicx,color}
\usepackage{titlesec}
\usepackage{parskip}
\usepackage{textcomp}
\usepackage[spanish]{babel}
\usepackage{mathtools}
\usepackage{multirow}
\usepackage{colortbl}
\usepackage{csquotes}
\usepackage{tikz}
\usepackage{matlab-prettifier}
\usepackage{hyperref}
\usepackage{siunitx}
\usepackage[left=3.25cm,right=3.25cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{physics}
\usepackage{tcolorbox}

\usetikzlibrary{cd,babel,shadows,decorations.markings}

\definecolor{grisunir}{RGB}{128, 128, 128}
\definecolor{grisclarounir}{RGB}{242, 242, 242}
\definecolor{negrounir}{RGB}{51,51,51}

\newcommand\titulacion[1]{\def\@titulacion{#1}}
\newcommand\asignatura[1]{\def\@asignatura{#1}}
\newcommand\actividad[2]{\def\@actividadN{#1}\def\@actividadNombre{#2}}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1\bigskipamount plus \smallskipamount minus \smallskipamount}
\titleformat{\section}[block]{\normalfont\bfseries\color{negrounir}}{\thesection.\ }{1em}{}
\titleformat{\subsection}[block]{\normalfont\bfseries\color{negrounir}}{\thesubsection.\ }{1em}{}
\color{negrounir}

\lhead{\@asignatura}
\lfoot{}
\cfoot{}
\rfoot{Actividades\ \colorbox{grisunir}{\color{white}\thepage}}

\newenvironment{rubrica}{%
  \renewcommand{\arraystretch}{1.5}
  \begin{center}
    \begin{tabular}{|p{2.4cm}|p{8.3cm}|r|r|}
      \rowcolor{negrounir}
      \textcolor{white}{Criterio} & \textcolor{white}{Descripción} & \textcolor{white}{Valor} & \textcolor{white}{Peso}    \\%
      }{Total                     &                                & 10                       & 100                     \% \\\hline\end{tabular}\end{center}}
\newcommand{\setrubrica}[4]{#1 & #2 & #3 & #4\% \\\hline}

\lstnewenvironment{matlab}{\lstset{frame=single,style=Matlab-Pyglike,texcl=true,language=Matlab}}{}

\newcommand{\maketitulo}{
  \begin{tcolorbox}[colback=grisclarounir, colframe=grisclarounir]
    {\LARGE Datos del estudiante}\newline%

    \textbf{Nombre y apellidos}\\
    \textbf{Fecha de entrega}%
  \end{tcolorbox}
  \textcolor{negrounir}{\newline\LARGE{Actividad \@actividadN: \@actividadNombre}}%
}
\renewcommand{\labelitemi}{\small\color{negrounir}{$\blacktriangleright$}}
\renewcommand{\labelitemii}{\small\color{negrounir}{\textbullet}}
\renewcommand{\labelitemiii}{\small\color{negrounir}{\textopenbullet}}
\renewcommand{\labelenumi}{\color{negrounir}{\textbf{\theenumi}.}}

%Traducción
\renewcommand{\solutiontitle}{\textbf{Solución}:\ }
\pointpoints{punto}{puntos}
\bonuspointpoints{punto extra}{puntos extra}
\totalformat{Pregunta \thequestion: \totalpoints puntos}
\chqword{Pregunta}
\chpgword{Página}
\chpword{Puntos}
\chbpword{Puntos extra}
\chsword{Puntos obtenidos}
\chtword{Total}

\newcommand*\eqlabel[2]{\tikz[baseline=(char.base)]{
    \node[shape=circle,inner sep=1pt,fill=#1!30,draw=#1] (char) {\tiny #2};}}
\newcommand*\eqreflabel[2]{\tikz[baseline=(char.base)]{
    \node[inner sep=1pt,fill=#1!30,draw=#1] (char) {\tiny #2};}}
\newcommand{\equalref}[2]{\stackrel{\eqreflabel{#1}{#2}}{=}}
