\ProvidesClass{techbrief}[2024/08/09 Custom class for tech briefs]
%% Bart Snapp and ChatGPT
\LoadClass[twocolumn]{article}

% Required Packages
\RequirePackage[letterspace=-80]{microtype}
\RequirePackage{tikz}
\RequirePackage{standalone}
\RequirePackage[includehead,includefoot,margin=1cm,headheight=1cm]{geometry}
\RequirePackage{stix2}
\RequirePackage{gillius}
\RequirePackage{multicol}
\RequirePackage{environ}
\RequirePackage{lettrine}
\RequirePackage{mathtools}
\RequirePackage{qrcode}
\RequirePackage{fancyhdr}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{pgf}

% Generate a random 4-digit number
\pgfmathsetseed{\number\pdfuniformdeviate10000} % Initialize the random number generator with a seed
\pgfmathtruncatemacro{\myrandom}{1000 + \pdfuniformdeviate 9000} % Random number between 1000 and 9999

\tikzset{>=stealth}
\qrset{height=1cm}

\setlength\parindent{0pt}

% Custom Commands
\newcommand{\event}[1]{\def\theevent{#1}}
\newcommand{\theevent}{}
\renewcommand{\title}[1]{\def\thetitle{#1}}
\renewcommand{\date}[1]{\def\thedate{#1}}
\newcommand{\thedate}{}

% Fancy Headers and Footers
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{title}{
  \fancyhead[L]{\sffamily\flushleft
    \! \resizebox{!}{.05\textheight}{\input{../../wormLogo/tikzLogo.tex}}%
    \resizebox{!}{.05\textheight}{\lsstyle \thetitle} \\
    Ximera: Interactive Mathematics Education \\[-.1cm]
    Resources for All\hfill \theevent: \thedate \\[.1cm]
    \rule{\textwidth}{.1cm}\\[.1cm]\rmfamily
    Email:~{\tt ximera@math.osu.edu} \hfill Website:~{\tt https://github.com/ximeraProject/}
  }
  \fancyfoot[L]{\sffamily\tiny\textbf{
    XIMERA\quad FORM \quad \myrandom \quad GIT \quad COMMIT \quad \input{../../.git/refs/heads/master} \quad PREVIOUS \quad EDITION \quad IS \quad OBSOLETE.
  }}
}

\fancypagestyle{main}{
  \fancyhead[L]{\sffamily\flushleft
    \resizebox{!}{.7em}{\input{../../wormLogo/tikzLogo.tex}}%
    \resizebox{!}{.7em}{\lsstyle \thetitle}\hfill \theevent: \thedate \\[-.1cm]
    \rule{\textwidth}{.1cm}\\[0cm]\rmfamily
    Email:~{\tt ximera@math.osu.edu} \hfill Website:~{\tt https://github.com/ximeraProject/}
  }
  \fancyfoot[L]{\sffamily\tiny\textbf{
    XIMERA\quad FORM \quad \myrandom \quad GIT \quad COMMIT \quad \input{../../.git/refs/heads/master} \quad PREVIOUS \quad EDITION \quad IS \quad OBSOLETE.
  }}
}

% Frame Environment
\NewEnviron{xframe}{
  \begin{mdframed}[roundcorner=2pt]
    \BODY
  \end{mdframed}
}

\endinput
