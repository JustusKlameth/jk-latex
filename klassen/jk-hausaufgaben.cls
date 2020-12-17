\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jk-hausaufgaben}[2020/12/14 Justus Klameth Hausaufgaben Klasse]

\LoadClass[parskip]{scrartcl}
\RequirePackage{jk-util}

\subject{Hausaufgaben}
\author{Justus Klameth}
\title{Beispiel Fach}
\subtitle{Beispiel Thema}
\def\revision{Version vom \today}
\def\revisionkurz{Version vom \the\day.\the\month.\the\year}
\date{\revision}

\addto\captionsgerman{
  \renewcommand{\contentsname}
    {Aufgaben}
}

\renewcommand{\thesection}{Aufgabe \arabic{section}:}
\renewcommand{\thesubsection}{\alph{subsection})}
\renewcommand{\autodot}{}

\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage}
\KOMAoptions{headsepline}
\lohead{\@subject}
\cohead{\@subtitle}
\rohead{\@title}
\lofoot{\revisionkurz}
\cofoot{Seite \thepage{} von \pageref{LastPage}}
\rofoot{\@author}

\newcommand{\titelblatt}{
    \maketitle
    \vfill
    \tableofcontents
    \thispagestyle{empty}
    \clearpage
}

\RequirePackage{xifthen}

\newcommand{\aufgabe}[2][]{
    \leftskip=0cm
    \ifthenelse{\isempty{#1}}
    {}
    {\setcounter{section}{#1 - 1}}
    \section[Aufgabe \arabic{section}]{#2}
}

\newcommand{\unteraufgabe}[1][]{
    \leftskip=1cm
    \ifthenelse{\isempty{#1}}
    {}
    {\setcounter{subsection}{#1 - 1}}
    \subsection{}
}

\newcounter{unterunteraufgabe}[subsection]

\newcommand{\unterunteraufgabe}[1][]{
    \leftskip=1cm
    \ifthenelse{\isempty{#1}}
    {}
    {\setcounter{unterunteraufgabe}{#1 - 1}}
    \refstepcounter{unterunteraufgabe}
    \paragraph{(\theunterunteraufgabe )}
}