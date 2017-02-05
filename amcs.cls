\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{amcs}[2016/06/12 The Chair of Applied Mathematics and Computer Science - Diploma Work]

%% Load base
\LoadClass[12pt]{article}

%% Load cyrillic
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}

%% Page geometry
\RequirePackage[
   a4paper,
   includefoot,
   headsep=0mm,
   tmargin=1.5cm,
   bmargin=1.5cm,
   lmargin=2.5cm,
   rmargin=1.5cm
]{geometry}

% Options
\RequirePackage{xkeyval}

\newcommand{\camcs@em}[1]{\textbf{\textsf{#1}}}

\newcommand{\camcs@courseline}{Квалификационная работа}
\newcommand{\setcourse}[1]{
  \renewcommand{\camcs@courseline}{Курсовая работа\\по дисциплине <<#1>>}
}

\newcommand{\camcs@title}{\camcs@em{title}}
\newcommand{\settitle}[1]{
  \renewcommand{\camcs@title}{#1}
}

\newcommand{\camcs@student}{\camcs@em{student}}
\newcommand{\camcs@student@group}{\camcs@em{group}}
\newcommand{\setstudent}[2]{
  \renewcommand{\camcs@student@group}{#1}
  \renewcommand{\camcs@student}{#2}
}

\newcommand{\camcs@student@title}{студент}
\newcommand{\camcs@student@ending}{}
\newcommand{\setfemale}{
  \renewcommand{\camcs@student@title}{студентка}
  \renewcommand{\camcs@student@ending}{а}
}

\newcommand{\camcs@supervisor}{\camcs@em{supervisor}}
\newcommand{\camcs@supervisor@title}{\camcs@em{title}}
\newcommand{\setsupervisor}[2]{
  \renewcommand{\camcs@supervisor@title}{#1}
  \renewcommand{\camcs@supervisor}{#2}
}

\newcommand{\camcs@chair}{Кафедра прикладной математики и информатики}
\newcommand{\camcs@chair@short}{ПМИ}
\newcommand{\camcs@chair@head}{Коровай~А.~В.}
\newcommand{\camcs@chair@head@title}{доц.}
\newcommand{\setchair}[4]{
  \renewcommand{\camcs@chair}{#2}
  \renewcommand{\camcs@chair@short}{#1}
  \renewcommand{\camcs@chair@head}{#4}
  \renewcommand{\camcs@chair@head@title}{#3}
}

\newcommand{\maketitlepage}{
  \begin{titlepage}
    \begin{center}
      \textup{Приднестровский государственный университет им. Т. Г. Шевченко}\\
      \textup{Физико-математический факультет}\\
      \textup{\camcs@chair}
      \vspace{1cm}
      \begin{flushright}
        \begin{minipage}[t][2cm][t]{8cm}
          \small
          \textsc{<<Допущено к защите>>}\\
          зав. кафедрой \camcs@chair@short,\\
          \camcs@chair@head@title\ \rule[-4pt]{3.5cm}{0.2pt}~\camcs@chair@head\\
          <<\rule[-4pt]{1cm}{0.2pt}>>~\rule[-4pt]{4cm}{0.2pt}\the\year\,г.
        \end{minipage}
      \end{flushright}
      \vspace{2cm}
      {\large \camcs@courseline}\\[6pt]
      {\Large \textsc{\camcs@title}}
      \vspace{4cm}
      \begin{flushright}
        \begin{minipage}[t][2cm][t]{8cm}
          Выполнил\camcs@student@ending :\\
          \hspace*{0.5cm}\camcs@student@title\ \camcs@student@group\ группы ФМФ\\
          \hspace*{0.5cm}\camcs@student\\[16pt]
          Руководитель:\\
          \hspace*{0.5cm}\camcs@supervisor@title\\
          \hspace*{0.5cm}\camcs@supervisor
        \end{minipage}
      \end{flushright}
      \vfill
      Тирасполь, \the\year
    \end{center}
  \end{titlepage}
  \newpage
  \setcounter{page}{2}
}

\linespread{1.5}

\renewenvironment{abstract}{
  \section*{Аннотация}
}{}


%% Dots in table and fig. captions
\RequirePackage{ccaption}
\captiondelim{. }

%% Sections
\RequirePackage{titlesec}
\titleformat{\section}
{\newpage\centering\normalfont\large\uppercase}{\thesection.}{0.5em}{\MakeUppercase}
\titleformat{\subsection}
{\centering\normalfont\large}{\thesubsection.}{0.5em}{\MakeUppercase}
\titleformat{\subsubsection}
{\centering\normalfont\normalsize}{\thesubsubsection.}{0.5em}{}

\newcommand{\ssection}[1]{
\section*{#1}
\addcontentsline{toc}{section}{#1}
}


%% TOC
\RequirePackage{titletoc}
\titlecontents{section}
[0em]
{}
{\contentslabel[\thecontentslabel.]{1.5em}}
{\hspace*{-1.5em}}
{\titlerule*[1pc]{.}\contentspage}

\titlecontents{subsection}
[3em] % ie, 1.5em (section) + 2em
{}
{\contentslabel[\thecontentslabel.]{2em}}
{\hspace*{-2em}}
{\titlerule*[1pc]{.}\contentspage}

\setcounter{tocdepth}{2}

%% Misc
\RequirePackage{indentfirst}
\RequirePackage[nottoc]{tocbibind}


%% PDF
\RequirePackage[
  unicode=true,
  bookmarks=true,
  bookmarksnumbered=false,
  bookmarksopen=false,
  breaklinks=false,
  pdfborder={0 0 0},
  backref=false,
  colorlinks=false
]{hyperref}
% \hypersetup{
%   pdftitle={\camcs@title},
%   pdfauthor={\camcs@student}
% }
\urlstyle{same}

\endinput
