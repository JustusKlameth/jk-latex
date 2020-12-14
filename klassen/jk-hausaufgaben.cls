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

\newcommand{\aufgabe}[1]{
    \leftskip=0cm
    \section[Aufgabe \arabic{section}]{#1}
}

\newcommand{\unteraufgabe}{
    \subsection{}
    \leftskip=1cm
}
