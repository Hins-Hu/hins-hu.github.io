% resume.cls - Resume class for the "Medium Length Professional CV" template
% Original by Trey Hunner (http://www.treyhunner.com/)
% Version 2.0

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[11pt,letterpaper]{article}

\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\usepackage{hyperref}

\pagestyle{empty}

%----------------------------------------------------------------------------------------
%   HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \addressSep {$\diamond$}

\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressone}{
    \def \@addressone {#1}
  }{
    \def \@addressthree {#1}
  }}
}

\def \printaddress #1{
  \begingroup
    \def \\ {\addressSep\ }
    \centerline{#1}
  \endgroup
  \par
  \addressskip
}

\def \printname {
  \begingroup
    \hfil{\MakeUppercase{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}

%----------------------------------------------------------------------------------------
%   PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document
  \printname
  \@ifundefined{@addressone}{}{ \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{ \printaddress{\@addresstwo}}
  \@ifundefined{@addressthree}{}{ \printaddress{\@addressthree}}
}

%----------------------------------------------------------------------------------------
%   SECTION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSection}[1]{
  \sectionskip
  \MakeUppercase{\bf #1}
  \sectionlineskip
  \hrule
  \begin{list}{}{
    \setlength{\leftmargin}{1.5em}
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%   WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{
 {\bf #1} \hfill {#2}
 \ifthenelse{\equal{#3}{}}{}{
  \\
  {\em #3} \hfill {\em #4}
  }
  \smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em}
   \itemsep -0.5em \vspace{-0.5em}
  }{
  \end{list}
  \vspace{0.5em}
}

%----------------------------------------------------------------------------------------
%   SPACING / FORMATTING
%----------------------------------------------------------------------------------------

\def\namesize{\huge}
\def\addressskip{\smallskip}
\def\sectionlineskip{\medskip}
\def\nameskip{\bigskip}
\def\sectionskip{\medskip}
