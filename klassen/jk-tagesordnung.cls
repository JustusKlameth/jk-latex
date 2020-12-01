\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jk-tagesordnung}[2020/11/30 Justus Klameth Tagesordnung Klasee]

\LoadClass[parskip]{scrartcl}
\RequirePackage{jk-util}

\subject{Tagesordnung}
\author{Justus Klameth}
\title{Beispiel Gruppierung}
\subtitle{Beispiel Thema}
\def\revision{Version vom \today}
\def\revisionkurz{Version vom \the\day.\the\month.\the\year}
\date{\revision}

\addto\captionsgerman{
  \renewcommand{\contentsname}
    {Tagesordnungspunkte}
}

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

\newcommand{\hauptpunkt}[1]{
  \section{#1}  
}

\newcommand{\unterpunkt}[1]{
  \subsection*{#1}
}