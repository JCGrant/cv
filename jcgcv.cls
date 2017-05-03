\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jcgcv}[2017/02/18 JCGrant CV]
\LoadClass[a4paper]{article}
\RequirePackage[T1]{fontenc}
\RequirePackage{titlesec}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage{helvet}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{soul}
\RequirePackage{changepage}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[usenames, dvipsnames]{xcolor}
\RequirePackage[margin=1cm]{geometry}

\definecolor{grey}{rgb}{0.6, 0.6, 0.6}
\definecolor{primarycolor}{HTML}{3c78d8}

\titleformat{\section}
  {\Large\color{primarycolor}}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
  {\footnotesize\bfseries}
  {}{0em}
  {}
\titlespacing{\subsection}
  {0em}
  {0.1em}
  {0.1em}

\titleformat{\subsubsection}
  {\footnotesize\bfseries}
  {}{0em}
  {}
\titlespacing{\subsubsection}
  {0em}
  {0.1em}
  {0.11em}


\newcommand{\columnWidth}{0.475\textwidth}
\newenvironment{column}
  { \begin{minipage}[t][1.5cm][t]{\columnWidth} }
  { \end{minipage}\hfill }


\newcommand{\name}[1]{%
  \vspace{-0.35cm} % Fixes the incorrect height for the name and details minipages
  \fontsize{36pt}{44pt}\selectfont{#1}
}

\newcommand{\datedtext}[2]{%
  #1 \hfill \textmd{\color{grey}#2}
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\datedtext{#1}{#2}}
}

\newcommand{\datedsubsubsection}[2]{%
  \subsubsection[#1]{\datedtext{#1}{#2}}
}

\newcommand{\myhref}[2]{%
  \href{#1}{\color{primarycolor}\setulcolor{primarycolor}\ul{#2}}
}

\newcommand{\githublink}[1]{%
  \myhref{https://github.com/JCGrant/#1}{github.com/JCGrant/#1}
}
