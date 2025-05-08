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
\RequirePackage[usenames, dvipsnames]{xcolor}
\RequirePackage[margin=1cm]{geometry}

\definecolor{grey}{rgb}{0.6, 0.6, 0.6}
\definecolor{primarycolor}{HTML}{6de311}
\newcommand{\fixTop}{\vspace{-0.4cm}}  % Fixes the incorrect height for the name and details minipages

\titleformat{\section}
  {\Large\bfseries\color{primarycolor}}
  {}{0em}{}
  [\titlerule]
\titlespacing{\section}
  {0em}{1em}{1em}

\titleformat{\subsection}
  {\footnotesize\bfseries}
  {}{0em}{}
\titlespacing{\subsection}
  {0em}{0.7em}{0em}

\newenvironment{column}
  { \begin{minipage}[t][1.5cm][t]{0.475\textwidth} }
  { \end{minipage}\hfill }

\newcommand{\name}[1]{%
  \fixTop
  \vspace{0.1cm}
  \fontsize{36pt}{128pt}\selectfont{\textbf{#1}}%
}

\newcommand{\datedtext}[2]{%
  #1 \hfill \textmd{\color{grey}#2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\datedtext{#1}{#2}}%
}

\newcommand{\myhref}[2]{%
  \href{#1}{\color{primarycolor}\setulcolor{primarycolor}\ul{\textbf{#2}}}%
}
