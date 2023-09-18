% Made by MARGOT Louis
% Contact:
%   - louis.margot.44@gmail.com
%
% License: GNU GPLv3.0
%
\NeedsTeXFormat{LaTeX2e}  % Require LaTeX2e
\ProvidesClass{designreport}[2023/09/13]  % Define name and date

%% Title variables
% - Title    | A title...
% - Author   | An author...
% - Subtitle | A subtitle...
% - Icon     | /path/to/icon
% - Date     | \today or a date

%% Global variables
\def\iconwidth{5cm}  % Icon width
\def\titlelineskip{\parskip}  % Title line skip
\def\titletextxscale{0.8}  % Title x scale text
% Author coordinates
% > Default - (2.65,-8.25)
% > Middle green box - (1.5,-14.75)
\def\authorcoordinates{2.65,-8.25}  % Author coordinates
% Colors
\def\cprimary{594d7b}  % Purple
\def\csecondary{74c2cc}  % Cyan
\def\ctertiary{c5d02a}  % Yellow/green

%% Options
% Recto-verso
\DeclareOption{rv}{%
% define rv variable
\def\@rv{rv}%
}%
% Default options
\DeclareOption*{%
\PassOptionsToClass{\CurrentOption}{article}%
}  % Pass options to article
\ProcessOptions\relax  % Process options
\LoadClass{article}  % Load base class

%% Packages
% General configuration
\RequirePackage[%
    left=2.5cm,%
    right=2.5cm,%
    top=2.5cm,%
    bottom=2.5cm,%
    footskip=0.5cm,%
    heightrounded,%
    marginparwidth=1.5cm,%
    marginparsep=0.5cm,%
]{geometry}  % To change page layout
\RequirePackage[pdftex,%
    pdfauthor={MARGOT Louis},%
    pdftitle={Rapport},%
    pdfsubject={2023 - CESI},%
    pdfkeywords={CESI},%
    pdfproducer={Latex with hyperref},%
    pdfcreator={pdflatex},%
    hidelinks,%
]{hyperref}  % To add hyperlinks
\RequirePackage{titlesec}  % To change section headings
\RequirePackage{tocloft}  % To change table of contents
\RequirePackage{parskip}  % To change paragraph layout
% Text, language
\RequirePackage{babel}  % In figures, tables, etc.
\RequirePackage[utf8]{inputenc}  % UTF-8 support
\RequirePackage[T1]{fontenc}  % Better font encoding
\RequirePackage{lmodern}  % Better font rendering
\RequirePackage{xcolor}  % To add colors
% External
\RequirePackage{graphicx}  % To include images
\RequirePackage{float}  % To place figures
\RequirePackage{tikz}  % To draw
\RequirePackage{listings}  % To include code
% Tables
\RequirePackage{tabularx}  % To create tables
\RequirePackage{array}  % Better tables rendering
% Math
\RequirePackage{amsmath}  % Formulas
\RequirePackage{amssymb}  % Symbols

%% Fonts
%\renewcommand{\familydefault}{\sfdefault}  % Sans-serif font
%\renewcommand{\arraystretch}{1.5}  % Table row height

%% Colors
\definecolor{primary}{HTML}{\cprimary}  % Purple
\definecolor{secondary}{HTML}{\csecondary}  % Cyan
\definecolor{tertiary}{HTML}{\ctertiary}  % Yellow/green

%% Custom commands
% Title (renew)
\renewcommand{\title}[1]{%
\gdef\@title{\parbox{\linewidth}{\uppercase{#1}}}%
}%
% Subtitle
\newcommand{\subtitle}[1]{%
\gdef\@subtitle{\parbox{\linewidth}{\uppercase{#1}}}%
}%
% Icon
\newcommand{\icon}[1]{\gdef\@icon{#1}}%
% Fancy line
\newcommand{\fline}{%
\par\vspace*{\titlelineskip}%
\tikz[baseline=-0.5ex]{%
\foreach \x /\colorlist in {1/primary,2/secondary,3/tertiary}  {%
\begin{scope}[xshift=-\x*2.5cm]%
    \draw[color=\colorlist, line width=1mm] (0,0) -- (2.5,0);%
\end{scope}%
}}%
\par\vspace*{\parskip}%
}%
% Full width fancy line
\newcommand{\ffline}{%
\vspace*{-\titlelineskip}%
\tikz[baseline=-0.5ex]{%
\foreach \x /\colorlist in {1/primary,2/secondary,3/tertiary}  {%
\begin{scope}[xshift=-\x*5.3cm]%
    \draw[color=\colorlist, line width=1mm] (0,0) -- (5.3,0);%
\end{scope}%
}}%
\par%
}%
% Default date
\date{\the\year}%

%% Title
\renewcommand{\maketitle}{{%
\newgeometry{%
    left=2.5cm,%
    right=2.5cm,%
    top=1.5cm,%
    bottom=2.5cm,%
}%
\thispagestyle{empty}%
%
% Background
\definecolor{ceeeeee}{RGB}{245,245,245}%
\definecolor{c63bdcc}{RGB}{99,189,204}%
\definecolor{c70c2cb}{RGB}{112,194,203}%
\definecolor{c8cccd5}{RGB}{140,204,213}%
\definecolor{cb6dee2}{RGB}{182,222,226}%
\definecolor{caad5db}{RGB}{170,213,219}%
\definecolor{cc4c925}{RGB}{196,201,37}%
\definecolor{cc3cd2b}{RGB}{195,205,43}%
\definecolor{cdcde7b}{RGB}{220,222,123}%
\definecolor{cebeab1}{RGB}{235,234,177}%
\definecolor{cdce08b}{RGB}{220,224,139}%
\begin{tikzpicture}[overlay, y=1cm, x=1cm, yscale=1.05,xscale=1.1, inner sep=0pt, outer sep=0pt]%
\begin{scope}[shift={(-3.2,-27.2)}]%
    \path[fill=ceeeeee] (2.0333, 27.8146) rectangle (18.9667, 1.8854);%
  \begin{scope}[shift={(-0.0833, 0.2312)}]%
    \path[fill=c63bdcc,line cap=butt,line join=miter,line width=0.0265cm] (2.1522, 9.6792) -- (10.6188, 8.6208) -- (3.4751, 6.7687) -- (2.1522, 7.0333) -- cycle;%
    \path[fill=c70c2cb,line cap=butt,line join=miter,line width=0.0265cm] (10.6188, 8.6208) -- (10.6188, 6.7687) -- (3.4751, 4.9167) -- (3.4751, 6.7687) -- cycle;%
    \path[fill=c8cccd5,line cap=butt,line join=miter,line width=0.0265cm] (2.1522, 7.0333) -- (3.4751, 6.7687) -- (3.4751, 4.9167) -- (2.1522, 5.1812) -- cycle;%
    \path[fill=cb6dee2,line cap=butt,line join=miter,line width=0.0265cm] (2.1522, 5.1812) -- (3.4751, 4.9167) -- (3.4396, 1.6542) -- (2.1167, 1.6542) -- cycle;%
    \path[fill=caad5db,line cap=butt,line join=miter,line width=0.0265cm] (3.4751, 4.9167) -- (10.6188, 6.7687) -- (10.6188, 1.7417) -- (3.4396, 1.6542) -- cycle;%
  \end{scope}%
  \begin{scope}[shift={(-0.0833, 0.2312)}]%
    \path[fill=cc4c925,line cap=butt,line join=miter,line width=0.0265cm] (2.1167, 18.5875) -- (10.5833, 17.5292) -- (3.4396, 15.6771) -- (2.1167, 15.9417) -- cycle;%
    \path[fill=cc3cd2b,line cap=butt,line join=miter,line width=0.0265cm] (10.5833, 17.5292) -- (10.5833, 15.6771) -- (3.4396, 13.825) -- (3.4396, 15.6771) -- cycle;%
    \path[fill=cdcde7b,line cap=butt,line join=miter,line width=0.0265cm] (2.1167, 15.9417) -- (3.4396, 15.6771) -- (3.4396, 13.825) -- (2.1167, 14.0896) -- cycle;%
    \path[fill=cebeab1,line cap=butt,line join=miter,line width=0.0265cm] (2.1167, 14.0896) -- (3.4396, 13.825) -- (3.4396, 8.5333) -- (2.1167, 8.7979) -- cycle;%
    \path[fill=cdce08b,line cap=butt,line join=miter,line width=0.0265cm] (3.4396, 13.825) -- (10.5833, 15.6771) -- (10.5833, 10.65) -- (3.4396, 8.5333) -- cycle;%
  \end{scope}%
\end{scope}%
\ifdefined\@icon%
\begin{scope}[anchor=south east, shift={(15.5,-24.5)}]%
    \node at (0,0) {\includegraphics[width=\iconwidth]{\@icon}};%
\end{scope}%
\fi%
\ifdefined\@author%
\begin{scope}[anchor=south west, shift={(\authorcoordinates)}]%
    \node[align=left, text width=10cm] at (0,0) {\fontsize{20}{20}\fontfamily{phv}\fontseries{b}\selectfont\color{primary}\@author};%
\end{scope}%
\fi%
\end{tikzpicture}%

% Content
{\fontsize{35}{35}%
\fontfamily{phv}\fontseries{b}\selectfont%
\color{tertiary}%
\scalebox{\titletextxscale}[1.0]{\@date}\par%
\color{primary}%
\scalebox{\titletextxscale}[1.0]{\@title}}%
\fline%
\ifdefined\@subtitle%
    {\fontsize{20}{20}%
    \fontfamily{phv}\fontseries{b}\selectfont%
    \color{secondary}%
    \scalebox{\titletextxscale}[1.0]{\@subtitle}}%
\fi%
\restoregeometry%
\clearpage%
\ifdefined\@rv{
    ~\thispagestyle{empty}%
    \clearpage%
}%
\fi%
\setcounter{page}{1}%
}}%

%% Headings
% Sections
\titleformat{\section}%
{\color{secondary}\Large\bfseries\uppercase}%
{\thesection}{1em}{}[{\ffline}]%
% Subsections
\titleformat{\subsection}%
{\color{primary}\large\bfseries\uppercase}%
{\thesubsection}{1em}{}%
% Subsubsections
\titleformat{\subsubsection}%
{\color{primary}\bfseries\uppercase}%
{\thesubsubsection}{1em}{}%
% Paragraphs
\titleformat{\paragraph}[runin]%
{\color{primary}\bfseries}%
{}{0em}{}%
% Subparagraphs
\titleformat{\subparagraph}[runin]%
{\color{primary}\bfseries}%
{}{0em}{}%

%% Styles
% Bold in color (primary)
\renewcommand{\textbf}[1]{{\color{primary}\bfseries#1}}%

%% Table of contents
% Depth
\setcounter{tocdepth}{3}%
\setcounter{secnumdepth}{3}%
% Title
\renewcommand{\cfttoctitlefont}{%
\color{secondary}\bfseries\Large\MakeUppercase%
}  % Title font
\renewcommand{\cftaftertoctitle}{\\[.15cm]\ffline} % After title
% Sections
\renewcommand{\cftsecfont}{\color{secondary}\bfseries}%
\renewcommand{\cftsecpagefont}{\color{secondary}\bfseries}%
% Subsections
\renewcommand{\cftsubsecfont}{\color{primary}\bfseries}%
\renewcommand{\cftsubsecpagefont}{\color{primary}}%
% Subsubsections
\renewcommand{\cftsubsubsecfont}{\color{primary}\bfseries}%
\renewcommand{\cftsubsubsecpagefont}{\color{primary}}%
% Paragraphs
\renewcommand{\cftparafont}{\color{primary}\bfseries}%
\renewcommand{\cftparapagefont}{\color{primary}}%
% Subparagraphs
\renewcommand{\cftsubparafont}{\color{primary}\bfseries}%
\renewcommand{\cftsubparapagefont}{\color{primary}}%

%% Pandoc support
\providecommand{\tightlist}{%
\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}%
}%
\providecommand{\EndFirstPage}{}%
