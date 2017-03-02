\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{eucaeuca}
              [2017/02/28 v1.2
euca's omni LaTeX class]


% load base class
\PassOptionsToClass{onecolumn}{article}
\PassOptionsToClass{oneside}{article}
\PassOptionsToClass{a4paper}{article}
\PassOptionsToClass{12pt}{article}
\PassOptionsToClass{final}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% load packages
\RequirePackage{amsmath}
\RequirePackage{geometry}
\geometry{left=1 in, right=1 in, top=1 in,bottom=1 in,footskip=0.5 in}
\RequirePackage{url}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{amsthm}
\RequirePackage{lipsum}

% custom commands
\newtheoremstyle{exbox} % for theorem
{1em}% space above
{2em}% space below
{\normalfont}% body font
{0pt}% indent amount
{\large\bf}% head font
{\null\par}% punctuation after head
{\par}% space after head
{\bfseries\thmname{#1}~\thmnumber{#2}
\thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black}---\nobreakspace#3.}} % optional note

\theoremstyle{exbox}
%\setlength{\parindent}{0pt}
\newcounter{exercisecounter}
\newtheorem{exerciseb}{Exercise}

\newenvironment{exercise}
{
\setlength{\itemsep}{2pt}
\setlength{\parsep}{1pt}
\begin{exerciseb}
\begin{itemize}\item[]
}{
\end{itemize}
\end{exerciseb}
}

% custom latex internals
\def\coursename#1{\gdef\@coursename{#1}}
\def\@coursename{\@latex@error{No \noexpand\coursename given}\@ehc}
\def\purpose#1{\gdef\@purpose{#1}}
\def\@purpose{\@latex@error{No \noexpand\purpose given}\@ehc}
\def\purposeindex#1{\gdef\@purposeindex{#1}}
\def\@purposeindex{\@latex@error{No \noexpand\purposeindex given}\@ehc}
\def\id#1{\gdef\@id{#1}}
\def\@id{}

\def\@maketitle{
  \newpage
  \begin{flushleft}
  \let \footnote \thanks
    {\large\bfseries
 \@coursename\ \;\@purpose~\@purposeindex \par}
    \vskip 0.5em
    {\large
        \@author,  \@id
    \par}
    \vskip 0.5em
    {\large \@date}
  \end{flushleft}
  \par
  \vskip 1em}

