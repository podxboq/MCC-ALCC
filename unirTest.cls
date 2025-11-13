\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unirTest}

\LoadClass[a4paper]{exam}

\RequirePackage{ifthen,amsmath,amssymb,amsthm,bm,graphicx,color}
\usepackage{titlesec}
\usepackage{textcomp}
\usepackage[spanish]{babel}
\usepackage{mathtools}
\usepackage{ulem}
\usepackage{multirow}
\usepackage{colortbl}
\usepackage{makecell}
\usepackage{csquotes}
\usepackage{physics}
\usepackage[left=0.6in,right=0.6in,top=2in,bottom=1.3in]{geometry}

\definecolor{azulunir}{RGB}{0, 152, 205}
\definecolor{grisunir}{RGB}{119, 119, 119}
\definecolor{azulflojounir}{RGB}{230,244,249}
\definecolor{respuestacorrecta}{RGB}{64, 113, 11}

\newcommand\titulacion[1]{\def\@titulacion{#1}}
\newcommand\asignatura[1]{\def\@asignatura{#1}}
\newcommand\temaN[1]{\def\@temaN{#1}}
\newcommand\temaNombre[1]{\def\@temaNombre{#1}}
\newcommand\tema[2]{\def\@temaN{#1}\def\@temaNombre{#2}}
\newcommand\bloqueN[1]{\def\@bloqueN{#1}}
\newcommand\bloqueNombre[1]{\def\@bloqueNombre{#1}}
\newcommand\bloque[2]{\def\@bloqueN{#1}\def\@bloqueNombre{#2}}

\titleformat{\section}[block]{\normalfont\bfseries\color{azulunir}}{\thesection.\ }{1em}{}
\renewcommand{\questionshook}{%
  \setlength{\leftmargin}{0pt}%
  \setlength{\labelwidth}{-3.5\labelsep}%
}

\renewcommand{\baselinestretch}{1.5}
\chead{\renewcommand{\arraystretch}{1.5}
  \begin{center}
    \begin{tabular}{l|l|l}
      \arrayrulecolor{azulunir}
      \hline
      \rowcolor{azulflojounir}
      \textcolor{azulunir}{Asignatura} & \textcolor{azulunir}{Nombre} & \textcolor{azulunir}{Fecha} \\
      \hline
      \textbf{\@asignatura}            & \makecell{\@author}          & \today                      \\
      \hline
    \end{tabular}
  \end{center}
}
\lfoot{\includegraphics[scale=0.5]{res/imgs/logo_unir}}
\cfoot{}
\rfoot{\@titulacion\ \colorbox{azulunir}{\color{white}\thepage}}

%Test
\newcounter{test}[section]\setcounter{test}{0}
\renewcommand{\thetest}{test}
\newcommand{\test}[1]{%
  \refstepcounter{test}%
  \textcolor{azulunir}{\textbf{\thetest.}}~#1}

\renewcommand{\labelitemi}{\small\color{azulunir}{$\blacktriangleright$}}
\renewcommand{\labelitemii}{\small\color{azulunir}{\textbullet}}
\renewcommand{\labelitemiii}{\small\color{azulunir}{\textopenbullet}}
\renewcommand{\labelenumi}{\color{azulunir}{\textbf{\theenumi}.}}
\renewcommand{\baselinestretch}{1.2}
\newcommand{\corregir}[2]{\textcolor{red}{\sout{#1} \textcolor{blue}{\uline{#2}}}}

%Traducción
\pointpoints{punto}{puntos}
\bonuspointpoints{punto extra}{puntos extra}
\totalformat{Pregunta \thequestion: \totalpoints puntos}
\chqword{Pregunta}
\chpgword{Página}
\chpword{Puntos}
\chbpword{Puntos extra}
\chsword{Puntos obtenidos}
\chtword{Total}

\pagestyle{headandfoot}
\firstpageheadrule
\runningheadrule
\CorrectChoiceEmphasis{\color{respuestacorrecta}\bfseries}
\firstpageheader{T\@temaN\ - \@temaNombre}{}{\@asignatura}
\runningheader{T\@temaN\ - \@temaNombre}{}{\@asignatura}