%!TEX encoding = UTF-8 Unicode

%
% jtthesis.cls -- LaTeX class for a thesis on scientific topics
%
% Created by jthywiss on 2020/02/19.
%
% Copyright (c) 2020 John A. Thywissen. Licensed under the LaTeX Project Public License.
%

%%%%%%%%
%: Description
%%%%%%%%

% This LaTeX document class produces a "typescript-style" thesis in conformance with
% Council of Science Editors, The Chicago Manual of Style, Turabian, and The University
% of Texas at Austin style.

% Council of Science Editors. Scientific Style and Format: The CSE Manual for Authors,
%    Editors, and Publishers. 7th ed. Reston, VA: Council of Science Editors; 2006.
%    ISBN: 978-0-9779665-0-9.
% The University of Chicago Press. The Chicago Manual of Style. 16th ed. Chicago: The
%    University of Chicago Press; 2010. ISBN: 978-0-226-10420-1.
% Kate L. Turabian. A Manual for Writers of Research Papers, Theses, and Dissertations.
%    9th ed. Chicago: The University of Chicago Press; 2018. ISBN: 978-0-226-43057-7.
% National Information Standards Organization. Scientific and Technical Reports -- 
%    Preparation, Presentation, and Preservation. Bethesda, MD: NISO Press; 2005.
%    (ANSI/NISO Z39.18-2005 (R2010)). Available from: http://www.niso.org/

%%%%%%%%
%: License Notice
%%%%%%%%

% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is John A. Thywissen.
%
% This work consists of this file.

%%%%%%%%
%: Class Declaration
%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jtthesis}[2020/12/02 v0.4 Thesis on scientific topics (JT)]

%%%%%%%%
%: Options
%%%%%%%%

\DeclareOption{a4paper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{a5paper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{b5paper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{letterpaper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{legalpaper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{executivepaper}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{landscape}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{11pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{12pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{oneside}{
  \PassOptionsToClass{\CurrentOption}{book}
%  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{twoside}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{draft}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{final}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{openright}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{openany}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{onecolumn}{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{leqno}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{fleqn}{
  \PassOptionsToClass{\CurrentOption}{book}
}
\DeclareOption{openbib}{
  \PassOptionsToClass{\CurrentOption}{book}
}
%\DeclareOption{margin}{
%  \PassOptionsToPackage{\CurrentOption}{geometry}
%}
\newif\ifJP@thmnumber
\JP@thmnumberfalse
\DeclareOption{thmnumber}{
  \JP@thmnumbertrue
}

% Option invocation
\ExecuteOptions{letterpaper,11pt,oneside,onecolumn,openright}
\ProcessOptions\relax

%%%%%%%%
%: Required packages
%%%%%%%%

\LoadClass[titlepage]{book}

\RequirePackage[
  textwidth=422pt, %480pt ?
  textheight=626pt,
  heightrounded,
  marginratio={9:7, 3:4},
  marginparwidth=44pt % Too small to be of much use
  ]{geometry}
\RequirePackage[defaultsans,scale=0.95]{opensans}
\RequirePackage[charter,greekuppercase=italicized]{mathdesign}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{stmaryrd}  % More math symbols
\RequirePackage{xcolor}
\RequirePackage{varioref}
\RequirePackage[final, colorlinks=true, pdfstartview=FitV, linkcolor=blue,
  citecolor=blue, urlcolor=blue]{hyperref}
\RequirePackage{datetime}
\RequirePackage{lastpage}
\RequirePackage{setspace}
\RequirePackage{caption}

%%%%%%%%
%: Date-time format
%%%%%%%%

\newdateformat{yyyymmmddate}{\THEYEAR~\shortmonthname[\THEMONTH]~\THEDAY}
\newdateformat{ddmmmyyyydate}{\twodigit{\THEDAY}~\shortmonthname[\THEMONTH]~\THEYEAR}
\newdateformat{monthyeardate}{\monthname[\THEMONTH]~\THEYEAR}
\ddmmmyyyydate
\settimeformat{xxivtime}

%%%%%%%%
%: Typefaces
%%%%%%%%

% UT-standard typefaces per: https://www.utexas.edu/brand-guidelines/visual-style-guide/fonts
\renewcommand*{\rmdefault}{bch}% Bitstream Charter (Predecessor to Charis SIL)
\renewcommand*{\bfdefault}{b}%
% sfdefault already set to Open Sans by opensans package above

% URL typeface

\urlstyle{sf}

%%%%%%%%
%: Colors
%%%%%%%%

% UT-standard primary color
\definecolor{burnt-orange}{rgb}{0.75,0.34,0.00} % Strong orange
% UT-standard secondary colors
\definecolor{navy-blue-gray}{rgb}{0.20,0.25,0.28} % Dark grayish cornflower blue / Very dark grayish blue
\definecolor{dark-blue}{rgb}{0.00,0.37,0.53} % Strong cerulean / Dark blue
\definecolor{dark-gray-green}{rgb}{0.26,0.41,0.36} % Dark grayish aquamarine / Very dark desaturated cyan - lime green
\definecolor{vivid-amber}{rgb}{0.95,0.66,0.00} % Vivid amber / Pure orange
\definecolor{coffee-brown}{rgb}{0.22,0.18,0.17} % Dark scarletish gray / Very dark grayish red
\definecolor{sand-gray}{rgb}{0.84,0.82,0.77} % Light amberish gray / Grayish yellow

\providecommand\headfootrulecolor{dark-blue}
\providecommand\draftcolor{vivid-amber}

%%%%%%%%
%: Page dimensions
%%%%%%%%

% Latex base page dimensions.  We override all of this with the geometry package settings above.

%\paperheight  -- set by book.cls according to paper option
%\paperwidth  -- set by book.cls according to paper option
%\textheight -- set by size__.clo to paperheight - 3.5in, adj. to ingtegal num \baselineskip's
%\textwidth -- set by size__.clo to paperwidth - 2in, with a max of 345pt-390pt

%\topmargin -- set by size__.clo to (paperheight-2in-headheight-headsep-textheight-footskip)/2
%\headheight -- set by size__.clo to 12pt
%\headsep -- set by size__.clo to 25pt
%\footskip -- set by size__.clo to 30pt

%\topskip -- set by size__.clo to font height (10/11/12pt)

%\oddsidemargin -- set by size__.clo, for oneside, to (paperwidth - textwidth)*0.5-1in
%\oddsidemargin -- set by size__.clo, for twoside, to (paperwidth - textwidth)*0.4-1in
%\evensidemargin -- set by size__.clo, to paperwidth-2in-textwidth-oddsidemargin

%\marginparsep -- set by size__.clo to 10pt or 11pt
%\marginparpush -- set by size__.clo to 5pt or 7pt
%\marginparwidth -- set by size__.clo, for oneside, to (paperwidth - textwidth)*0.6-marginparsep-0.4in, max 2in
%\marginparwidth -- set by size__.clo, for twoside, to (paperwidth - textwidth)*0.5-marginparsep-0.8in, max 2in

\setlength\columnsep{24pt}
\setlength\columnseprule{0pt}

\doublespacing


%%%%%%%%
%: Page headers/footers
%%%%%%%%

% Latex base page styles:
% - empty: headers & footers empty
% - plain: page number only
% - headings: header section/subsection & page #, footer empty
% - myheadings: header user specified "mark" & page #, footer empty
% - firstpage (letter only) header empty, footer address & phone
% - (slide page styles...)
% - titlepage (ltxdoc & ltnews only) page with \maketitle

\def\JP@draftlabel{\sffamily\colorbox{\draftcolor}{\color{white}DRAFT \gitdescribe built \today~\currenttime}}

%\def\JPfoot@page{\pagename~\thepage\pageofcountseperator\pageref*{LastPage}}
\def\JPfoot@page{\thepage}
\def\JPfoot@restrict{\normalfont\textsc{\sffamily\small\textbf{\color{red}}}}
\def\JPfoot@date{\ifnum\number\overfullrule>0 \normalfont\small\JP@draftlabel\else\today\fi}

%TODO: Compute head/footruleraise based on the actual height of the headers/footers
\newlength{\hfrulewidth}%
\setlength{\hfrulewidth}{0.25pt}%
\newlength{\headruleraise}%
\setlength{\headruleraise}{-0.3\baselineskip}%
\def\headrule{\color{\headfootrulecolor}\rule[\headruleraise]\textwidth\hfrulewidth}
\newlength{\footruleraise}%
\setlength{\footruleraise}{0.65\baselineskip}%
\def\footrule{\color{\headfootrulecolor}\rule[\footruleraise]\textwidth\hfrulewidth}

\def \ps@plain {%
  \let \@mkboth = \@gobbletwo
  \let \@oddhead = \@empty
%  \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
  \def\@oddfoot{\sffamily\footnotesize\rlap{}{\ifnum\number\overfullrule>0 \normalfont\small\JP@draftlabel\else\fi}\hfil{\ifnum\number\overfullrule>0 \else\normalfont\sffamily\small\JPfoot@page\fi}\hfil{\ifnum\number\overfullrule>0 \normalfont\sffamily\small\JPfoot@page\else\fi}}%
  \let \@evenhead = \@empty
%  \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
  \def\@evenfoot{\sffamily\footnotesize\rlap{}{\ifnum\number\overfullrule>0 \normalfont\small\JP@draftlabel\else\fi}\hfil{\ifnum\number\overfullrule>0 \else\normalfont\sffamily\small\JPfoot@page\fi}\hfil{\ifnum\number\overfullrule>0 \normalfont\sffamily\small\JPfoot@page\else\fi}}%
}

%TODO: Running heads on even pages should be the **first** "leftmark" on that page, and on odd pages should be the **last** "rightmark" on that page.
\if@twoside
  \def\ps@headings{%
    \def\@oddhead{\sffamily\rlap{\headrule}\hfil\hfil{\rightmark}}%
    \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
    \def\@evenhead{\sffamily\rlap{\headrule}{\leftmark}\hfil\hfil}%
    \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {{%
        \ifnum \c@secnumdepth >\z@
          \thechapter.
        \fi
        ##1}}{{%
        \ifnum \c@secnumdepth >\z@
          \thechapter.
        \fi
        ##1}}}%
    \def\sectionmark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\@ne
          \thesection.
        \fi
        ##1}}}
\else
  \def\ps@headings{%
    \def\@oddhead{\sffamily\rlap{\headrule}\hfil\hfil{\rightmark}}%
    \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
    \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markright {{%
        \ifnum \c@secnumdepth >\m@ne
          \thesection.
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \def\@oddhead{\sffamily\rlap{\headrule}\hfil\hfil{\rightmark}}%
    \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
    \def\@evenhead{\sffamily\rlap{\headrule}{\leftmark}\hfil\hfil}%
    \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
}

\pagestyle{plain}

%%%%%%%%
%: Section headers
%%%%%%%%

\renewcommand\frontmatter{%
  \clearpage
  \@mainmatterfalse
  \pagenumbering{roman}%
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}%
}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \setstretch{1.0}
  \@mainmatterfalse}

\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \normalfont\sffamily
    \ifnum \c@secnumdepth >\m@ne
      \centering
      \if@mainmatter
%        \centering\large\bfseries \@chapapp\space \thechapter.
        \Large\bfseries \thechapter.
        \par\nobreak
        %\vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \sffamily\large \bfseries #1\par\nobreak
    \vskip 40\p@
}}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright
    \normalfont\sffamily
    \interlinepenalty\@M
    \centering\large \bfseries  #1\par\nobreak
    \vskip 40\p@
}}

\newcommand*{\@appendperiod}[1]{#1\@addpunct{.}} % @addpunct comes from amsthm

\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname.\quad}

\renewcommand*\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\sffamily\large\bfseries}}
\renewcommand*\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\sffamily\large\bfseries}}
\renewcommand*\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\sffamily\large\bfseries}}
\renewcommand*\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\sffamily\normalsize\bfseries}}
\renewcommand*\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\sffamily\normalsize\bfseries\@appendperiod}}
\renewcommand*\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\sffamily\normalsize\itshape\@appendperiod}}

%%%%%%%%
%: Section and other element names
%%%%%%%%

% Chicago Manual of Style section 8.178 says "The words chapter, part, appendix, table, figure, and the like are lowercased and spelled out in text".
% These terms are capitalized here for use in headings.  Apply \MakeLowercase when using in text.
\renewcommand\contentsname{Contents}
\renewcommand\listfigurename{Figures}
\renewcommand\listtablename{Tables}
\providecommand\refname{}
\renewcommand\refname{References}
\providecommand\bibname{}
\renewcommand\bibname{\refname}
\renewcommand\indexname{Index}
\renewcommand\figurename{Figure}
\renewcommand\tablename{Table}
\renewcommand\partname{Part}
\providecommand\chaptername{}
\renewcommand\chaptername{Chapter}
\providecommand\appendixname{}
\renewcommand\appendixname{Appendix}
\providecommand\abstractname{}
\renewcommand\abstractname{Abstract}
\renewcommand\proofname{Proof}
\newcommand\pagename{Page}
\newcommand\pageofcountseperator{~of~} % Used in "Page 1 of 2"
\newcommand\sectionname{Section}
\newcommand\footnotename{Footnote}
\newcommand\itemname{Item}
\newcommand\equationname{Equation}

% autoref set up

\renewcommand\equationautorefname{\MakeLowercase\equationname}
\renewcommand\footnoteautorefname{\MakeLowercase\footnotename}
\renewcommand\itemautorefname{\MakeLowercase\itemname}
\renewcommand\figureautorefname{\MakeLowercase\figurename}
\renewcommand\tableautorefname{\MakeLowercase\tablename}
\renewcommand\partautorefname{\MakeLowercase\partname}
\renewcommand\appendixautorefname{\MakeLowercase\appendixname}
\renewcommand\chapterautorefname{\MakeLowercase\chaptername}
\renewcommand\sectionautorefname{\MakeLowercase\sectionname}
\renewcommand\subsectionautorefname{\MakeLowercase\sectionname}
\renewcommand\subsubsectionautorefname{\MakeLowercase\sectionname}
\renewcommand\paragraphautorefname{\MakeLowercase\sectionname}
\renewcommand\subparagraphautorefname{\MakeLowercase\sectionname}
\renewcommand\pageautorefname{\MakeLowercase\pagename}

% --------
% "\Autoref" for \autoref at the start of a sentence.
%
% Code by:
%   Ahmed Musa (University of Central Lancashire, Preston, United Kingdom)
%   From a TeX - LaTeX Stack Exchange answer
%        <https://tex.stackexchange.com/questions/34155#40413>, 2012 Jan 08
%   and an extract from the catoptions package, version 0.2.7h, 2014 Aug 29

\newcommand\cptswap[2]{#2#1}
\newcommand\ifnullTF[1]{%
  \ifcat$\detokenize{#1}$\expandafter\@firstoftwo
    \else\expandafter\@secondoftwo\fi
}
\newcommand\ifblankTF[1]{%
  \expandafter\ifnullTF\expandafter{\@gobble#1.}%
}
\long\def\aftercsname#1#2{%
  \expandafter\cptswap\expandafter{\csname#2\endcsname}{#1}%
}
\long\def\usename#1{\csname#1\endcsname}
\def\ifcsndefTF#1{%
  \ifblankTF{#1}{%
    \expandafter\@secondoftwo\@gobble
  }{%
    \ifcsname#1\endcsname
      \expandafter\@firstofone
    \else
      \expandafter\expandafter\expandafter\@secondoftwo\expandafter\@gobble
    \fi
  }{%
    \aftercsname\ifdefTF{#1}%
  }%
}
\def\ifdefTF#1{%
  \ifblankTF{#1}\@secondoftwo{%
    \usename{@\ifx#1\cpt@undefined second\else
    \ifx#1\relax second\else first\fi\fi oftwo}%
  }%
}
\def\Autoref#1{%
  \begingroup
  \edef\reserved@a{#1}%
  \ifcsndefTF{r@#1}{%
    \expandafter\expandafter\expandafter
    \cptswap\expandafter\expandafter
    \expandafter{\csname r@\reserved@a\endcsname}{\expandafter\testreftype\@fourthoffive}%
      .\\{#1}%
  }{%
    \ref{#1}%
  }%
  \endgroup
}
\def\testreftype#1.#2\\#3{%
  \ifcsndefTF{#1autorefname}{%
    \def\reserved@a##1##2\@nil{%
      \uppercase{\def\ref@name{##1}}%
      \aftercsname\edef{#1autorefname}{\ref@name##2}%
      \autoref{#3}%
    }%
    \reserved@a#1\@nil
  }{%
    \autoref{#3}%
  }%
}

% End "\Autoref"
% --------

%%%%%%%%
%: Title
%%%%%%%%

% Redefine titlepage environment to NOT overwrite page counter
\renewenvironment{titlepage}{%
  \clearpage
  \thispagestyle{empty}%
}{%
  \clearpage
}

\providecommand\titlepagehead{\relax}

% Document metadata used on title/copyright/abstract pages

\def\authordegrees#1{\gdef\@authordegrees{#1}}
\def\@authordegrees{\@latex@error{No \noexpand\authordegrees given}\@ehc}
\def\committeechair#1{\gdef\@committeechair{#1}}
\def\@committeechair{\@latex@error{No \noexpand\committeechair given}\@ehc}
\def\committeecochair#1{\gdef\@committeecochair{#1}}
\def\@committeecochair{\@latex@error{No \noexpand\committeecochair given}\@ehc}
\def\presentedto#1{\gdef\@presentedto{#1}}
\def\@presentedto{\@latex@error{No \noexpand\presentedto given}\@ehc}
\def\institution#1{\gdef\@institution{#1}}
\def\@institution{\@latex@error{No \noexpand\institution given}\@ehc}
\def\thesistype#1{\gdef\@thesistype{#1}}
\def\@thesistype{\@latex@error{No \noexpand\thesistype given}\@ehc}
\def\degree#1{\gdef\@degree{#1}}
\def\@degree{\@latex@error{No \noexpand\degree given}\@ehc}
\def\degreeabbrev#1{\gdef\@degreeabbrev{#1}}
\def\@degreeabbrev{\@latex@error{No \noexpand\degreeabbrev given}\@ehc}
\newcommand{\degreedate}[3]{\newdate{degreedate}{#1}{#2}{#3}\date{\monthyeardate\displaydate{degreedate}\ddmmmyyyydate}}


\renewcommand\maketitle{\begin{titlepage}%
%  \newgeometry{
%    textwidth=515pt,
%    textheight=722pt,
%    heightrounded,
%    centering
%  }
  \setlength{\parindent}{0pt}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \renewcommand{\baselinestretch}{1.666667}
  \sffamily
  \titlepagehead%
  \vfill%
  \parbox{\textwidth}{%
      \centering%
      \vspace*{6pt}
      {\large\sffamily\bfseries\upshape \@title \par}
      \vspace{64pt}
      {\large\sffamily\mdseries\upshape by \par}
      \vspace{32pt}
      {\large\sffamily\bfseries\upshape%
        \@author%, \@authordegrees
        \par}
      \vspace{80pt}
      {\large\sffamily\bfseries\upshape \@thesistype\par}
      {\normalsize\sffamily\mdseries\upshape%
        Presented to \@presentedto{} of\par
        \@institution\par
        in Partial Fulfillment \par
        of the Requirements\par
        for the Degree of \par
        \par}
      {\large\sffamily\bfseries\upshape \@degree\par}
      \vspace{54pt}
      {\large\sffamily\bfseries\upshape \@institution\par}
      \vspace{12pt}
      {\large\sffamily\bfseries\upshape \ifnum\number\overfullrule>0 \JP@draftlabel\else\monthyeardate\displaydate{degreedate}\ddmmmyyyydate\fi \par}
      \vspace*{6pt}
  }%
  \vfill%
%  \restoregeometry
  \end{titlepage}%
  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
}

%%%%%%%%
%: Copyright page
%%%%%%%%

\def\copyrightpage{%
  \begin{titlepage}
    \vspace*{0pt}
    \vfill
    {\centering%
      \normalsize\rmfamily\mdseries\upshape Copyright \par
      \getdateyear{degreedate} \par
      \@author \par}
    \vfill
    \vfill
  \end{titlepage}
}

%%%%%%%%
%: Approval Page
%%%%%%%%

% A signature block
%\def\committeemember#1{\hfill \parbox{0.5\textwidth}{ %
%  \vspace{48pt}
%  \underline{\hspace{0.5\textwidth}} \linebreak %
%    #1 %
%  }  \par
%}

% A NON-signature block
\def\committeemember#1{\hfill \parbox{0.5\textwidth}{ %
  \vspace{30pt}
    #1 %
  }  \par
}

\newenvironment{approvalpage}{%
  \begin{titlepage}
  \vspace*{0pt}
  \vfill
  {\centering%
    \normalsize\rmfamily\mdseries\upshape The \@thesistype~Committee for \@author \par
    certifies that this is the approved version of the following \MakeLowercase{\@thesistype}: \par}
  \vspace{24pt}
  {\centering \large\rmfamily\bfseries\upshape \@title \par}
  \vspace{48pt}
  \hfill %
  \parbox{0.5\textwidth}{ {\normalsize\rmfamily\bfseries\upshape Committee:} } \par
  \committeemember{\@committeechair, Supervisor}
  \committeemember{\@committeecochair, Co-supervisor}
}%
{
  \par
  \vfill
  \vfill
  \end{titlepage}
}

%%%%%%%%
%: Dedication Page
%%%%%%%%

\newenvironment{dedicationpage}{%
  \begin{titlepage}
    \vspace*{0pt}
    \vfill
    \centering%
    \normalsize\rmfamily\mdseries\upshape
}%
{
    \par
    \vfill
    \vfill
  \end{titlepage}
}

%%%%%%%%
%: Abstract
%%%%%%%%

\newenvironment{abstract}{%
  \chapter*{\abstractname%
    \@mkboth{\abstractname}{\abstractname}%
  }%
  \pdfbookmark[0]{\abstractname}{abstract}
  \parbox{\textwidth}{%
    \centering%
    {\large\rmfamily\bfseries\upshape \@title \par}
    \vspace{12pt}
    {\normalsize\rmfamily\mdseries\upshape by \par}
    \vspace{12pt}
    {\normalsize\rmfamily\mdseries\upshape\@author, \@degreeabbrev\par
      \@institution, \getdateyear{degreedate}\par}
    \vspace{24pt}
      {\normalsize\rmfamily\mdseries\upshape%
        Supervisor: \@committeechair\par
        Co-supervisor: \@committeecochair\par
      }
      \vspace{32pt}
  }%
}%
{
  \par
}

%%%%%%%%
%: Table of Contents
%%%%%%%%

% Accommodate 3 digit page numbers
\def\@pnumwidth{2.05em}
\def\@tocrmarg{3.05em}

% Accommodate 2 digit section numbers
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.9em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil
      \nobreak\hb@xt@\@pnumwidth{\hss #2%
                                 \kern-\p@\kern\p@}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{1.9em}{2.7em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{4.6em}{3.6em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{8.2em}{4.5em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{10.4em}{5.4em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{12.4em}{6.4em}}
\renewcommand*\l@figure{\@dottedtocline{1}{0.0em}{3.0em}}
\let\l@table\l@figure

\renewcommand\tableofcontents{%
  \pdfbookmark[0]{\contentsname}{contents}
  \chapter*{\contentsname%
    \@mkboth{\contentsname}{\contentsname}%
  }%
  \begin{singlespace}%
    \@starttoc{toc}%
  \end{singlespace}%
}
% Style note: Table of Contents required if report > 20 pages.

%%%%%%%%
%: List of Figures
%%%%%%%%

\renewcommand\listoffigures{%
  \chapter{\listfigurename%
    \@mkboth{\listfigurename}{\listfigurename}%
  }%
  \begin{singlespace}%
    \@starttoc{lof}%
  \end{singlespace}%
}
% Style note: List of Figures & List of Tables required if fig+tables > 5

%%%%%%%%
%: List of Tables
%%%%%%%%

\renewcommand\listoftables{%
  \chapter{\listtablename%
    \@mkboth{\listtablename}{\listtablename}%
  }%
  \begin{singlespace}%
    \@starttoc{lot}%
  \end{singlespace}%
}
% Style note: List of Figures & List of Tables required if fig+tables > 5

%%%%%%%%
%: Bibliography
%%%%%%%%

\def\bibsection{\chapter*{\refname%
    \@mkboth{\refname}{\refname}%
  }%
  \addcontentsline{toc}{chapter}{\refname}%
}
\let\bib@heading\bibsection
\renewenvironment{thebibliography}[1]
  {\begin{singlespace}%
    \bibsection%
    \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist%
    \end{singlespace}}

%%%%%%%%
%: Index
%%%%%%%%

\renewenvironment{theindex}
  {\begin{singlespace}%
    \twocolumn[\chapter*{\indexname\@mkboth{\indexname}{\indexname}}]%
    \addcontentsline{toc}{chapter}{\indexname}%
    \thispagestyle{plain}\parindent\z@
    \parskip\z@ \@plus .3\p@\relax
    \columnseprule \z@
    \columnsep 35\p@
    \let\item\@idxitem}
  {\end{singlespace}\onecolumn}
% Style note: Index required if report ≥ 50 pages

%%%%%%%%
%: Float separation
%%%%%%%%

\setlength\floatsep    {16\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{28\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {16\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {16\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{28\p@ \@plus 2\p@ \@minus 4\p@}

%%%%%%%%
%: Captions
%%%%%%%%

%captionsetup defaults are {format=default,labelformat=default,labelsep=period,justification=justified,font=singlespacing,labelfont=default,textfont=default,margin=0pt,indention=0pt,parindent=0pt,hangindent=0pt,singlelinecheck=false}
\captionsetup[table]{position=top}
\captionsetup[lstlisting]{position=top}
\captionsetup{font=singlespacing, labelfont={sf, bf}, textfont={sf}, labelsep=period, skip=17pt, margin=\z@,singlelinecheck=false}

%%%%%%%%
%: Theorem-like environments
%%%%%%%%

% Define a theorem-like environment, which is numbered if the "thmnumber" option was given
\newcommand{\JP@newthmenv}[2]{%
  \ifJP@thmnumber\newtheorem{#1}{#2}\else\newtheorem*{#1}{#2}\fi%
  \expandafter\def\csname #1autorefname\endcsname{#2}%
}
% Define a theorem-like environment, which is never numbered
\newcommand{\JP@newthmenvUnnum}[2]{%
  \newtheorem*{#1}{#2}%
  \expandafter\def\csname #1autorefname\endcsname{#2}%
}
% Define a theorem-like environment, which is subordinately numbered if the "thmnumber" option was given
\newcommand{\JP@newthmenvSubnum}[3]{%
  \ifJP@thmnumber\newtheorem{#1}{#2}[#3]\else\newtheorem*{#1}{#2}\fi%
  \expandafter\def\csname #1autorefname\endcsname{#2}%
}

\def\th@plain{%
  \thm@headfont{\sffamily\bfseries}
  \itshape % body font
}
\def\th@definition{%
  \thm@headfont{\sffamily\bfseries}
  \normalfont % body font
}
\def\th@remark{%
  \thm@headfont{\sffamily\itshape}
  \normalfont % body font
  \thm@preskip\topsep \divide\thm@preskip\tw@
  \thm@postskip\thm@preskip
}

% Possible theorem-like environments:
%   Algorithm  Corollary  Proposition
%   Assertion  Criterion  Reduction
%   Axiom      Hypothesis Sublemma
%   Conjecture Lemma      Theorem

\theoremstyle{plain}

\JP@newthmenv{theorem}{Theorem}
\JP@newthmenv{conjecture}{Conjecture}
\JP@newthmenv{corollary}{Corollary}
\JP@newthmenv{proposition}{Proposition}
\JP@newthmenv{lemma}{Lemma}
\JP@newthmenv{algorithm}{Algorithm}
\JP@newthmenv{assertion}{Assertion}
\JP@newthmenv{axiom}{Axiom}
\JP@newthmenv{criterion}{Criterion}
\JP@newthmenv{hypothesis}{Hypothesis}
\JP@newthmenv{reduction}{Reduction}
\JP@newthmenvSubnum{sublemma}{Sublemma}{lemma}

% Possible definition-style theorem-like environments
%   Condition  Exercise Solution
%   Definition Problem
%   Example    Property

\theoremstyle{definition}

\JP@newthmenv{example}{Example}
\JP@newthmenv{definition}{Definition}
\JP@newthmenv{problem}{Problem}
\JP@newthmenvUnnum{solution}{Solution}
\JP@newthmenv{exercise}{Exercise}
\JP@newthmenv{condition}{Condition}
\JP@newthmenv{property}{Property}

% Possible remark-style theorem-like environments
%   Answer     Convention  Question
%   Assumption Discussion  Remark
%   Case       Fact        Step
%   Claim      Notation    Subcase
%   Comment    Note
%   Conclusion Observation

\theoremstyle{remark}

\JP@newthmenvUnnum{remark}{Remark}
\JP@newthmenv{assumption}{Assumption}
\JP@newthmenv{question}{Question}
\JP@newthmenvUnnum{answer}{Answer}
\JP@newthmenv{case}{Case}
\JP@newthmenvSubnum{subcase}{Subcase}{case}
\JP@newthmenv{claim}{Claim}
\JP@newthmenvUnnum{comment}{Comment}
\JP@newthmenvUnnum{conclusion}{Conclusion}
\JP@newthmenvUnnum{convention}{Convention}
\JP@newthmenvUnnum{discussion}{Discussion}
\JP@newthmenvUnnum{fact}{Fact}
\JP@newthmenvUnnum{notation}{Notation}
\JP@newthmenvUnnum{note}{Note}
\JP@newthmenvUnnum{observation}{Observation}
\JP@newthmenvSubnum{step}{Step}{algorithm}

\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \sffamily\itshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}

%%%%%%%%
%: git describe
%%%%%%%%

\def\complainmissinggitdesc{\PackageError{jtthesis}{git describe failed}{%
  The attempt to run "git describe" failed.\MessageBreak%
  One probable cause: git is not in the permitted list of shell commands.\MessageBreak%
  Check that the file\MessageBreak%
  /usr/local/texlive/texmf-local/web2c/texmf.cnf\MessageBreak%
  has the following entry:\MessageBreak%
  shell_escape_commands = \ \MessageBreak%
  bibtex,bibtex8,extractbb,kpsewhich,makeindex,mpost,repstopdf,git%
}}

\newread\gitstream
\newcommand*\gitdescribe{}
\openin\gitstream=|"git describe --dirty --always"
\ifeof\gitstream
    \complainmissinggitdesc
\else
    \read\gitstream to \gitdescribe
\fi

%TODO: Consider the following for configuration:
%- \part
%- \tableofcontents
%- \listoffigures
%- \listoftables
%- \newblock
%- \subitem \subsubitem
%- \indexspace
%- envs: description abstract verse quotation quote titlepage figure figure* table table* thebibliography theindex
%- labels for: enum item
%- toc style
%- lof style
%- lot style
%- bib style
%- idx style

\endinput
