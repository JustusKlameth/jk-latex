\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jk-hausaufgaben}[2021/02/07 Justus Klameth Hausaufgaben Klasse]

\LoadClass[parskip]{scrartcl}
\RequirePackage{jk-util}

% Einstellen des Faches für das die Aufgaben bearbeitet werden, erforderlich
\newcommand{\setFach}[1]{
    \def\Fach{#1}
}
\title{\Fach}

% Möglichkeit zum Einstellen der Arbeitsart, default: Hausaufgaben
\subject{Hausaufgaben}
\let\setArbeitsArt\subject

% Möglichkeit zum Einstellen des Themas der Aufgaben
\let\setThema\subtitle

% Standard Autor
\author{Justus Klameth}

% Möglichkeit zum Einstellen des Aufgabendatums, default: \today
\def\AufgabenDate{Aufgaben vom \today}
\newcommand{\setAufgabenDate}[1]{
    \def\AufgabenDate{Aufgaben vom #1}
}
\date{\AufgabenDate}

% Kopf- und Fußzeile
\def\version{Version vom \the\day.\the\month.\the\year}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage}
\KOMAoptions{headsepline}
\lohead{\@subject}
\cohead{\@title}
\rohead{\@subtitle}
\lofoot{\version}
\cofoot{Seite \thepage{} von \pageref{LastPage}}
\rofoot{\@author}

% Erstellen eines Titelblatts mit Inhaltsverzeichnis
\newcommand{\titelblatt}{
    \maketitle
    \vfill
    \tableofcontents
    \thispagestyle{empty}
    \clearpage
}

% Inhaltsverzeichnis umbenennen
\newcommand{\setTOCName}[1]{
    \addto\captionsgerman{
        \renewcommand{\contentsname}{#1}
    }
}

% Aufgabenstellung
\newenvironment{aufgabenstellung}
    {
        \begin{center}
            \begin{tabular}{|p{0.9\textwidth}|}
                \hline\\
    }
    { 
                \\\\\hline
            \end{tabular} 
        \end{center}
    }
