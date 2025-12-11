\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unirTema}
\LoadClass[11pt,a4paper]{article}

\newif\if@temaunir
\newif\if@temaunirpro
\newif\if@documentotema
\newif\if@documentoactividad
\newif\if@documentoproblema
\newif\if@documentolaboratorio
\newif\if@documentoexamen

\DeclareOption{tema=unir}{%
  \@temaunirtrue
  \@temaunirprofalse
}
\DeclareOption{tema=unirpro}{%
  \@temaunirfalse
  \@temaunirprotrue
}

\DeclareOption{documento=tema}{%
  \def\@documentoTitulo{Tema}
  \@documentotematrue
  \@documentoproblemafalse
  \@documentoactividadfalse
  \@documentolaboratoriofalse
  \@documentoexamenfalse
}

\DeclareOption{documento=problema}{%
  \def\@documentoTitulo{Problema}
  \@documentoproblematrue
  \@documentotemafalse
  \@documentoactividadfalse
  \@documentolaboratoriofalse
  \@documentoexamenfalse
}

\DeclareOption{documento=actividad}{%
  \def\@documentoTitulo{Actividad}
  \@documentoactividadtrue
  \@documentotemafalse
  \@documentoproblemafalse
  \@documentolaboratoriofalse
  \@documentoexamenfalse
}

\DeclareOption{documento=laboratorio}{%
  \def\@documentoTitulo{Laboratorio}
  \@documentolaboratoriotrue
  \@documentotemafalse
  \@documentoproblemafalse
  \@documentoactividadfalse
  \@documentoexamenfalse
}

\DeclareOption{documento=examen}{%
  \def\@documentoTitulo{Examen}
  \@documentoexamentrue
  \@documentotemafalse
  \@documentoproblemafalse
  \@documentoactividadfalse
  \@documentolaboratoriofalse
}

\ExecuteOptions{tema=unir}
\ExecuteOptions{documento=tema}
\ProcessOptions\relax

\usepackage{fontspec}
\setmainfont{calibri}[
  Path = res/fonts/,  % Ruta donde tienes el archivo
  Extension = .ttf,
  UprightFont = *,
  BoldFont = *b,
  ItalicFont = *i,
  BoldItalicFont = *z
]
\usepackage[spanish]{babel}
\usepackage{csquotes}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{etoolbox}
\usepackage{caption}
\usepackage{color,colortbl}
\usepackage[shortlabels]{enumitem}
\usepackage{titletoc}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{multirow}
\usepackage{textpos}
\usepackage{fix-cm}
\usepackage[fontsize=10pt,color=grisunir,angle=90,hpos=10mm,vpos=25cm,text=\mbox{\textcopyright\ Universidad\ Internacional\ de\ La\ Rioja\ (UNIR)}]{draftwatermark}
\usepackage{mathrsfs}
\usepackage{physics}
\usepackage{mathtools}
\usepackage{tikz}
\usepackage{tikz-cd}
\usepackage{forest}

% Paquetes añadidos para Computación Cuántica
\usepackage{dsfont}            % Para símbolos especiales (\mathds{1}, etc.)
\usepackage{pgfplots}          % Gráficos científicos
\usepackage{cleveref}          % Referencias inteligentes

\usetikzlibrary{cd,babel,shadows,decorations.markings}

\usepackage{lettrine}
\usepackage{setspace}
\usepackage[top=2.5cm, bottom=2.5cm, left=3.25cm, right=3.25cm]{geometry}
\usepackage{afterpage}
\usepackage{amssymb}
\usepackage{float}
\usepackage{verbatim}
\usepackage[framemethod=TikZ]{mdframed}
\usepackage{array}
\usepackage{subfig}
\usepackage{cancel}
\usepackage[many]{tcolorbox}
\usepackage{supertabular}
\usepackage[backend=biber,style=apa]{biblatex}
\usepackage{algorithmicx}
\usepackage{algpseudocode}
\usepackage{quantikz}
\usepackage{listings}
\usepackage{environ}
\DeclareLanguageMapping{spanish}{spanish-apa}
\decimalpoint

% Configuración pgfplots
\pgfplotsset{compat=1.18}

% Colores especiales para la plantilla según tema
\if@temaunir
  \definecolor{azulunir}{RGB}{0, 102, 153}  % Más oscuro para mejor contraste
  \definecolor{azulclaro}{RGB}{240, 248, 252}  % Fondo muy sutil
  \definecolor{grisunir}{RGB}{89, 89, 89}  % Más oscuro
  \definecolor{negrounir}{RGB}{51,51,51}
\fi
\if@temaunirpro
  \definecolor{azulunir}{RGB}{0, 27, 71}
  \definecolor{azulclaro}{RGB}{230,244,249}
  \definecolor{grisunir}{RGB}{119, 119, 119}
\fi

%variables
\newcommand\titulacion[1]{\def\@titulacion{#1}}
\newcommand\asignatura[1]{\def\@asignatura{#1}}
\newcommand\temaN[1]{\def\@temaN{#1}}
\newcommand\temaNombre[1]{\def\@temaNombre{#1}}
\newcommand\tema[2]{\def\@temaN{#1}\def\@temaNombre{#2}}
\newcommand\bloqueN[1]{\def\@bloqueN{#1}}
\newcommand\bloqueNombre[1]{\def\@bloqueNombre{#1}}
\newcommand\bloque[2]{\def\@bloqueN{#1}\def\@bloqueNombre{#2}}

\renewcommand\UrlFont{\color{azulunir}}
\renewcommand{\arraystretch}{1}%separacion entre filas en las tablas
\arrayrulecolor{azulunir}%color del borde de las tablas

% Cuestiones relacionadas con el formato de los parrafos
\renewcommand{\baselinestretch}{1.2} % Interlineado ampliado
\setlength{\parindent}{0pt} %indentación de párrafos
\setlength{\parskip}{1\bigskipamount plus \smallskipamount minus \smallskipamount}

% listas al formato UNIR
\setlist[itemize,1]{
  label={\color{azulunir}$\blacktriangleright$},
  leftmargin=1.5em,
  itemsep=0.2\baselineskip,
  parsep=0pt,
  topsep=0.3\baselineskip
}
\renewcommand{\labelitemi}{\small\color{azulunir}{$\blacktriangleright$}}
\renewcommand{\labelitemii}{\small\color{azulunir}{$\gg$}}
\renewcommand{\labelitemiii}{\small\color{azulunir}{\textopenbullet}}
\newcommand{\likeitem}[1]{\textcolor{azulunir}{\textbf{#1.}}}
\setlist[enumerate,1]{
  label={\color{azulunir}\bfseries\arabic*.},
  leftmargin=1.5em,
  itemsep=0.2\baselineskip
}

% Mejores delimitadores automáticos
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}

%espacios para las fórmulas
\AtBeginDocument{\setlength{\abovedisplayskip}{10pt}}
\AtBeginDocument{\setlength{\belowdisplayskip}{10pt}}

%caja con borde arriba y abajo
\newtcolorbox{info}{%
  arc=0pt,outer arc=0pt,colback=white,colframe=azulunir,%
  coltext=grisunir,boxsep=0pt,top=10pt,bottom=10pt,%
  boxrule=0pt,bottomrule=1pt,toprule=1pt}

%caja con borde arriba y abajo y fondo
\newtcolorbox{infoplus}{%
  arc=0pt,outer arc=0pt,colback=azulflojounir,colframe=azulunir,%
  coltext=grisunir,boxsep=0pt,top=10pt,bottom=10pt,%
  boxrule=0pt,bottomrule=1pt,toprule=1pt}

\newtcolorbox{theotitle}{colback=azulunir!10!white,colupper=black,colframe=azulunir,fontupper=\bfseries}

% Entornos necesarios para la redacción del documento
% Teorema
\newcounter{theo}[section]\setcounter{theo}{0}
\renewcommand{\thetheo}{\arabic{theo}}
\newenvironment{theo}[1][]{
\refstepcounter{theo}
\ifstrempty{#1}
{
  \begin{tcolorbox}[
    enhanced,
    colback=azulunir!3,         % Fondo azul muy sutil
    colframe=white,                  % Sin color de marco principal
    colbacktitle=grisunir!10,         % Fondo del título ligeramente más oscuro
    coltitle=azulunir,                  % Título en negro
    fonttitle=\bfseries\sffamily,
    title=Teorema~\thetheo,
    boxrule=0pt,                     % Sin ningún marco principal
    arc=0pt,
    top=10pt,
    bottom=10pt,
    left=12pt,
    right=12pt,
    toptitle=6pt,
    bottomtitle=6pt,
    attach boxed title to top left={yshift=0pt, xshift=0pt},
    boxed title style={
        enhanced,
        arc=0pt,
        boxrule=0pt,                 % Sin marco general del título
        left=6pt,                   % Espacio después del borde
        right=6pt
      },
    breakable,
    before skip=\baselineskip,
    after skip=0.8\baselineskip
  ]
}
{
  \begin{tcolorbox}[
      enhanced,
      colback=azulunir!3,
      colframe=white,
      colbacktitle=grisunir!10,
      coltitle=azulunir,
      fonttitle=\bfseries\sffamily,
      title=Teorema~\thetheo:~#1,
      boxrule=0pt,
      arc=0pt,
      top=10pt,
      bottom=10pt,
      left=12pt,
      right=12pt,
      toptitle=6pt,
      bottomtitle=6pt,
      attach boxed title to top left={yshift=0pt, xshift=0pt},
      boxed title style={
          enhanced,
          arc=0pt,
          boxrule=0pt,
          left=6pt,
          right=6pt
        },
      breakable,
      before skip=\baselineskip,
      after skip=0.8\baselineskip
    ]
    }
    }{
  \end{tcolorbox}
}


% Demostración
\renewenvironment{proof}{\par\textbf{\textcolor{azulunir}{Demostración.}}\par}{\hfill\qedsymbol{}}

% Proposición
\newenvironment{prop}{
  \refstepcounter{theo}
  \textbf{Resultado~\thetheo}\par}{}

% Definicion
\newcounter{defi}[section]\setcounter{defi}{0}
\renewcommand{\thedefi}{\arabic{defi}}
\newenvironment{defi}[1][]{
\refstepcounter{defi}
\ifstrempty{#1}
{
  \begin{tcolorbox}[
      enhanced,
      colback=azulunir!3,              % Fondo azul muy sutil
      colframe=azulunir,                  % Sin marco principal
      colbacktitle=azulunir!8,         % Fondo del título
      coltitle=black,                  % Título en negro
      fonttitle=\bfseries,
      title=Definición~\thedefi,
      boxrule=0pt,                     % Sin marco principal
      arc=0pt,
      top=10pt,
      bottom=10pt,
      left=12pt,
      right=12pt,
      toptitle=6pt,
      bottomtitle=6pt,
      leftrule=2pt,
      attach boxed title to top left={yshift=0pt, xshift=0pt},
      boxed title style={
          enhanced,
          colback=azulunir!8,
          colframe=azulunir,
          arc=0pt,
          boxrule=0pt,
          leftrule=2pt,
          toprule=0pt,
          bottomrule=0pt,
          rightrule=0pt,
          left=5pt,
          right=5pt,
          top=3pt,
          bottom=3pt
        },
      breakable,
      before skip=\baselineskip,       % Espacio antes CONTROLADO
      after skip=0.6\baselineskip     % Espacio después CONTROLADO
    ]
    }
    {
    \begin{tcolorbox}[
        enhanced,
        colback=azulunir!3,
        colframe=azulunir	,
        colbacktitle=azulunir!8,
        coltitle=black,
        fonttitle=\bfseries\sffamily,
        title=Definición~\thedefi:~#1,   % Con título personalizado
        boxrule=0pt,
        arc=0pt,
        top=10pt,
        bottom=10pt,
        left=12pt,
        right=12pt,
        toptitle=6pt,
        bottomtitle=6pt,
        attach boxed title to top left={yshift=0pt, xshift=0pt},
        boxed title style={
            enhanced,
            colback=azulunir!8,
            colframe=azulunir,
            arc=0pt,
            boxrule=0pt,
            leftrule=3pt,
            toprule=0pt,
            bottomrule=0pt,
            rightrule=0pt,
            left=12pt,
            right=8pt,
            top=3pt,
            bottom=3pt
          },
        breakable,
        before skip=\baselineskip,
        after skip=0.6\baselineskip      % PUEDES AJUSTAR ESTE VALOR
      ]
      }
      }{
    \end{tcolorbox}
    }

    %resaltado
    \newenvironment{resaltado}
    {\begin{mdframed}[backgroundcolor=azulunir!10,topline=false,bottomline=false,linewidth=0pt]}
        {\end{mdframed}}

    %% Ejemplo
    \newcounter{eje}[section]\setcounter{eje}{0}
    \renewcommand{\theeje}{\arabic{eje}}
    \newenvironment{eje}[1][]{
      \refstepcounter{eje}
      \begin{mdframed}[
          backgroundcolor=gray!3,
          linecolor=azulunir,
          linewidth=1pt,
          leftline=true,
          rightline=false,
          topline=false,
          bottomline=false,
          innerleftmargin=15pt
        ]
        \textbf{\color{azulunir}Ejemplo~\theeje\ifstrempty{#1}{.}{:~#1}}
        \vspace{0.2\baselineskip}\newline%
        }{
      \end{mdframed}%
    }

    % Ejercicio
    \newcounter{ejer}[section]\setcounter{ejer}{0}
    \renewcommand{\theejer}{\arabic{ejer}}
    \newenvironment{ejer}[1][]{
      \refstepcounter{ejer}
      \mdfsetup{innertopmargin=10pt,linecolor=azulunir,
        linewidth=1pt,topline=false,bottomline=false,
        frametitleaboveskip=\dimexpr-\ht\strutbox\relax}
      \begin{mdframed}[nobreak=false]
        \relax
        \textbf{\color{azulunir}Ejercicio~\theejer\ifstrempty{#1}{.}{:~#1}}%
        \vspace{0.2\baselineskip}\newline%
        }{
      \end{mdframed}%
    }

    % Entorno questions personalizado
    \newenvironment{questions}{
      \begin{enumerate}[
          label=\textbf{\color{azulunir}\arabic*.},
          leftmargin=2em,
          itemsep=0.8\baselineskip
        ]
        }{
      \end{enumerate}
    }

    % Entorno question
    \newenvironment{question}{\item}{\par}

    % Entorno parts (subpreguntas)
    \newenvironment{parts}{
      \begin{enumerate}[
          label=\textbf{\color{azulunir}\alph{*})},  % Sintaxis correcta para enumitem
          leftmargin=2em,
          itemsep=0.4\baselineskip,
          parsep=0pt,
          topsep=0.3\baselineskip
        ]
        }{
      \end{enumerate}
    }

    % Entorno part
    \renewenvironment{part}{\item}{\par}

    \newcounter{problem}[section]
    \newenvironment{problem}[1][]{
    \refstepcounter{problem}
    % ... (código del entorno problem en el artifact)
    }{\end{tcolorbox}}

% Comando que genera la portada para los apuntes
\newcommand{\portada}{%
  \caratula
  \newpage
  \tableofcontents
  \piepaginacero
  \newpage
}

% Comando que genera la primera página
\newcommand{\caratula}{%
  \let\endtitlepage\relax
  \begin{titlepage}%
    \newgeometry{top=2.5cm, bottom=2.5cm, left=3.25cm, right=1.25cm}%
    \afterpage{\restoregeometry}%
    \begin{textblock*}{6cm}(11cm,-3cm)
      \hfill\flushright\textcolor{grisunir}{\fontsize{20}{20}\selectfont{\@documentoTitulo~\@temaN}}
      \hspace{0.25cm}
      \textcolor{azulunir}{\rule{0.3cm}{1.88cm}}
    \end{textblock*}
    \vspace*{3.5cm}
    \hfill \flushright \textcolor{grisunir}{\fontsize{20}{20}\selectfont{Bloque \@bloqueN. \@bloqueNombre}} \\
    \noindent\makebox[\linewidth]{\textcolor{azulunir}{\rule{\textwidth}{2pt}}}
    \hfill \flushright \textcolor{azulunir}{\fontsize{36}{36}\selectfont{\@temaNombre}} \\%
  \end{titlepage}
}

% Redefinimos los comandos section, subsection y subsubsection
\titleformat{\section}[hang]
{\normalfont}{}{0 ex}{\newgeometry{margin=3.25cm} \flushright \Huge \textcolor{azulunir} }
[\begin{textblock*}{6cm}(9.25cm,-4.2cm)
    \hfill{\textcolor{azulunir}{\rule{0.2mm}{3.8cm}}}
  \end{textblock*}]
\titlespacing{\section}{0cm}{-1.3cm}{*1}[0cm]

% Subsection
\titleformat{\subsection}[hang]
{\normalfont}{\LARGE\textcolor{azulunir}{\thesubsection}}{1ex}{\filright\LARGE\textcolor{azulunir}}

% Subsubsection
\titleformat{\subsubsection}[hang]
{\normalfont\sffamily\large\bfseries}
{\textcolor{azulunir}{\thesubsubsection}}
{1ex}
{\textcolor{azulunir}}

% Definimos un comando para los pies de pagina
\patchcmd{\section}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}
\renewcommand{\headrulewidth}{0pt}

\newcommand{\piepagina}[2]{
  \pagestyle{fancy}
  \fancyhf{}
  \fancyfootoffset{1.85cm}
  \fancyfoot[R]{
    \begin{minipage}[c]{14.5cm} % Ponía 12cm % 14.5cm con margin=3.25
      \begin{flushright}
        \textcolor{grisunir}{#1} \\
        \textcolor{azulunir}{#2}
      \end{flushright}
    \end{minipage} \hspace{0.5cm}
    \colorbox{azulunir}{
      \begin{minipage}[c][2.01cm][c]{0.71cm} % Ponía 0.51cm
        \begin{center}
          \textcolor{white}{ \thepage}
        \end{center}
      \end{minipage}}
  }}
\setlength{\footskip}{38.41246pt}
\newcommand{\piepaginacero}[0]{
  \pagestyle{fancy}
  \fancyhf{}
  \fancyfoot{}}

% Comando para incrustar el material audiovisual
\newcommand{\recurso}[2]{%
  \href{#2}{{\color{azulunir} {\Large $\blacktriangledown$}}}
  \hspace{0.2cm}
  \color[rgb]{0.2,0.2,0.2}
  \textbf{#1}. También disponible a través del aula virtual.
}
\newcommand{\video}[2]{%
  \begin{info}%
    \href{#2}{{\color{azulunir} {\Large $\blacktriangleright$}}}%
    \hspace{0.2cm}%
    Accede al v\'ideo: #1. También disponible a través del aula virtual.%
  \end{info}
}

% Comandos necesarios para modificar la tabla de contenidos
\addto\captionsspanish{\renewcommand*\contentsname{Índice}}
\setcounter{tocdepth}{2}

\titlecontents{section}
[5.5em]
{\bigskip}
{\textcolor{azulunir} \thecontentslabel \enspace \textcolor{azulunir}}
{\textcolor{azulunir} \thecontentslabel \enspace \textcolor{azulunir}}
{\titlerule*[1pc]{\textcolor{azulunir} .}\textcolor{azulunir} \contentspage}
[\smallskip]

\titlecontents{subsection}
[7.5em]
{\smallskip}
{\textcolor{grisunir} \thecontentslabel\enspace \textcolor{grisunir}}
{\textcolor{grisunir} \thecontentslabel\enspace \textcolor{grisunir}}
{\titlerule*[1pc]{\textcolor{grisunir} .} \textcolor{grisunir} \contentspage}


\DeclareCaptionFont{grisunir}{\color{grisunir}}
\captionsetup{labelfont={grisunir},textfont=grisunir}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\addto\captionsspanish{\renewcommand*\refname{ }}
\addto\captionsspanish{\renewcommand{\tablename}{Tabla}}
% aplicacio restringida
\newcommand\restr[2]{{% we make the whole thing an ordinary symbol
\left.\kern-\nulldelimiterspace % automatically resize the bar with \right
#1 % the function
%\vphantom{\big|} % pretend it's a little taller at normal size
\right|_{#2} % this is the delimiter
}}

\forestset{%
box/.style={%
draw, no edge, l=0, l sep=1.5ex,%
font=\linespread{0.6}\selectfont,
calign=first, anchor=base west,%
if level=0{font = \bfseries}{},%
if n children=0{}{%
after packing node={%
minimum width/.pgfmath=%
  {s("!l")+max_x("!l")-s("!1")-min_x("!1")},%
for children/.wrap pgfmath arg={s+={##1}}{0},%
typeset node}}}}

\newcommand{\esquemaForest}[1]{%
  \section*{Esquema}
  \phantomsection
  \addcontentsline{toc}{section}{Esquema}
  \piepagina{\@asignatura}{Tema \@temaN. Esquema}
  \begin{center}
    \begin{forest} for tree={rounded corners,box,drop shadow,text=white,draw=azulunir,fill=azulunir,align=center}%
      #1
    \end{forest}
  \end{center}
  \newpage
}

\newcommand{\esquema}[1]{%
  \section*{Esquema} % Los esquemas los prepararás en PowerPoint (plantilla_esquemas.ppt), en un slide por tema. Cuando tengas todos los esquemas, envíalos al responsable de contenidos y desde allí los editarán al estilo UNIR. Además, genera un archivo (.png, .jpg, .eps, .pdf) con el esquema de cada tema
  \phantomsection
  \addcontentsline{toc}{section}{Esquema}
  \piepagina{\@asignatura}{Tema \@temaN. Esquema}
  \begin{figure}[H]
    \centering
    \includegraphics[width=20.2cm,angle=90]{#1}
    \label{fig:t\@temaN-esquema}
  \end{figure}
  \newpage
}

\newenvironment{tikzesquema}
{%
  \section*{Esquema}%
  \phantomsection%
  \addcontentsline{toc}{section}{Esquema}%
  \piepagina{\@asignatura}{Tema \@temaN. Esquema}%
  \noindent%
  \vspace{3cm}
  \begin{center}%
    }
    {%
  \end{center}\newpage%
}

\newenvironment{esquemaExplorador}{%
  \section*{Esquema}
  \phantomsection
  \addcontentsline{toc}{section}{Esquema}
  \piepagina{\@asignatura}{Tema \@temaN. Esquema}

  \[
    \begin{dcases}}{%
    \end{dcases}
  \]
  \newpage
}

\newcommand{\temaEsquema}[2]{%
  \text{\textcolor{azulunir!80}{\textbf{#1}}}&
  \ifstrempty{#2}{}{
    \begin{dcases}
      #2
    \end{dcases}
    \\
  }
}

\newcommand{\conceptoEsquema}[2]{%
  \text{\textcolor{negrounir!60}{#1}}&
  \ifstrempty{#2}{}{\text{#2}}
  \\
}

\newcommand{\unirsection}[1]{%
  \section*{#1}
  \phantomsection
  \addcontentsline{toc}{section}{#1}
  \piepagina{\@asignatura}{Tema \@temaN. #1}
  \setcounter{section}{\@temaN}
}

\newenvironment{nota}%
{\vspace*{-.75\baselineskip}\noindent\textcolor{azulunir}{\hrule}\textbf{Nota: }}
{\vspace*{.75\baselineskip}\noindent\textcolor{azulunir}{\hrule}}

\newcommand{\corregir}[2]{\textcolor{red}{\sout{#1} \textcolor{blue}{\uline{#2}}}}

\newenvironment{tableUnir}{%
  \begin{table}[h]%
    \centering%
    \renewcommand{\arraystretch}{1.5}%
    \rowcolors{2}{azulflojounir}{white}%
    }{\end{table}}

\newcommand{\afondo}[2]{%
  \begin{info}%
    En la sección \ref{sec:#1} encontrarás más información sobre #2.
  \end{info}
}
\hypersetup{
  colorlinks=true,
  linkcolor=azulunir,
  urlcolor=azulunir,
  citecolor=grisunir
}
\lstset{
  language=Python,
  basicstyle=\ttfamily\small,
  keywordstyle=\color{blue},
  stringstyle=\color{red},
  commentstyle=\color{teal},
  showstringspaces=false,
  numbers=left,
  numberstyle=\tiny\color{gray},
  breaklines=true,
  frame=single,
  inputencoding=latin1
}

% Comando para controlar la visibilidad de las soluciones
\newif\ifprintanswers
\printanswersfalse  % Por defecto, no mostrar soluciones

% Comandos para activar/desactivar soluciones
\newcommand{\printanswers}{\printanswerstrue}
\newcommand{\noprintanswers}{\printanswersfalse}

\NewEnviron{solution}{%
  \ifprintanswers
    \begin{tcolorbox}[
        enhanced,
        colback=green!3,
        colframe=white,
        colbacktitle=green!15,
        coltitle=black,
        fonttitle=\bfseries\sffamily,
        boxrule=0pt,
        arc=0pt,
        top=8pt,
        bottom=8pt,
        left=12pt,
        right=12pt,
        toptitle=4pt,
        bottomtitle=4pt,
        attach boxed title to top left={yshift=0pt, xshift=0pt},
        boxed title style={
            enhanced,
            colback=green!15,
            colframe=green!60,
            arc=0pt,
            boxrule=0pt,
            leftrule=3pt,
            toprule=0pt,
            bottomrule=0pt,
            rightrule=0pt,
            left=12pt,
            right=8pt,
            top=3pt,
            bottom=3pt
          },
        breakable,
        before skip=0.5\baselineskip,
        after skip=0.5\baselineskip
      ]
      \BODY
    \end{tcolorbox}
  \fi
}

\newcommand{\answerspace}[1]{
  \ifprintanswers
    % Si se muestran soluciones, no añadir espacio extra
  \else
    \vspace{#1}  % Espacio para escribir la solución a mano
  \fi
}

% Comando para líneas en blanco
\newcommand{\answerlines}[1]{
  \ifprintanswers
    % Si se muestran soluciones, no añadir líneas
  \else
    \foreach \n in {1,...,#1}{
        \noindent\makebox[\linewidth]{\hrulefill} \\[0.3\baselineskip]
      }
  \fi
}

% Comando para soluciones inline (en línea)
\newcommand{\fillin}[2][4cm]{
  \ifprintanswers
    \textbf{\color{green!70!black}#2}  % Mostrar respuesta
  \else
    \underline{\hspace{#1}}           % Mostrar línea para completar
  \fi
}

% Configuración del código MATLAB
\lstdefinestyle{matlab}{
  language=Matlab,
  title=Matlab,
  basicstyle=\ttfamily\small,
  keywordstyle=\color{blue}\bfseries,
  commentstyle=\color{green!60!black}\itshape,
  stringstyle=\color{red},
  numberstyle=\tiny\color{gray},
  numbers=left,
  numbersep=5pt,
  frame=single,
  breaklines=true,
  breakatwhitespace=false,
  showstringspaces=false,
  tabsize=2,
  captionpos=b
}
