%!TEX encoding = UTF-8 Unicode

%
% jtpaper.cls -- LaTeX class for a paper on mathematical, scientific, or engineering topics
%
% Created by jthywiss on 2016/03/29.
%
% Copyright (c) 2016 John A. Thywissen. Licensed under the LaTeX Project Public License.
%

%%%%%%%%
%: Description
%%%%%%%%

% This LaTeX document class produces a straightforward document style for a scholarly
% paper on mathematical, scientific, or engineering topics.  It is conceptually equivalent
% to LaTeX's proc (or article) document class, but LaTeX base classes are obligated to
% stay the same as their initial release (1985), so they cannot track "best practices".
% This class is strongly influenced by the CSE (Council of Science Editors) style, and by
% the Chicago Manual of Style.
%
% Some style differences form the LaTeX base classes:
% - Text width and height is appropriate for A4/US Letter trim size.
% - With the titlepage option, abstract is placed on verso of title page.  (This does not yet
%    produce a title page (and its verso) that is complete per NISO/ISO/GLISC standards.)
% - Page running headers and footers are set up by default.
% - Element names (chapter, figure, etc.) are spelled-out, per CMS. (autoref is set up, too.)
% - Headings are title case.
% - Float (table/figure) margins are a bit larger, per CSE suggestions.
% - Headings and captions are formatted per CSE and CMS.
% - Many enunciations (theorem-like environments) are declared.
% - With the thmnumber option, most enunciations  are numbered (per style standards).
% - ToC heading is "Contents", LoF is "Figures", and LoT is "Tables", per CMS.
% - Typefaces are Bitstream Charter and Open Sans. Headings, etc. use Open Sans.

% Council of Science Editors. Scientific Style and Format: The CSE Manual for Authors,
%    Editors, and Publishers. 7th ed. Reston, VA: Council of Science Editors; 2006.
%    ISBN: 978-0-9779665-0-9.
% The University of Chicago Press. The Chicago Manual of Style. 16th ed. Chicago: The
%    University of Chicago Press; 2010. ISBN: 978-0-226-10420-1.
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
\ProvidesClass{jtpaper}[2016/03/29 v1.0 Paper on mathematical topics (JT)]

%%%%%%%%
%: Options
%%%%%%%%

\DeclareOption{a4paper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{a5paper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{b5paper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{letterpaper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{legalpaper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{executivepaper}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{landscape}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{11pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{12pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{oneside}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{twoside}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{draft}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{final}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{titlepage}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{notitlepage}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{onecolumn}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{twocolumn}{
  \PassOptionsToClass{\CurrentOption}{article}
  \PassOptionsToPackage{\CurrentOption}{geometry}
}
\DeclareOption{leqno}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{fleqn}{
  \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption{openbib}{
  \PassOptionsToClass{\CurrentOption}{article}
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
\ExecuteOptions{letterpaper,11pt,twoside,onecolumn}
\ProcessOptions\relax

%%%%%%%%
%: Required packages
%%%%%%%%

\LoadClass{article}

\if@twocolumn
  \RequirePackage[
    textwidth=506pt,
    textheight=626pt,
    heightrounded,
    marginratio={9:7, 3:4},
    marginparwidth=20pt % Too small to be of much use
    ]{geometry}
\else
  \RequirePackage[
    textwidth=422pt, %480pt ?
    textheight=626pt,
    heightrounded,
    marginratio={9:7, 3:4},
    marginparwidth=44pt % Too small to be of much use
    ]{geometry}
\fi
\RequirePackage[defaultsans,scale=0.95]{opensans}
\RequirePackage[charter,greekuppercase=italicized]{mathdesign}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{stmaryrd}  % More math symbols
\RequirePackage{color}
\RequirePackage{varioref}
\RequirePackage[final, colorlinks=true, pdfstartview=FitV, linkcolor=blue,
  citecolor=blue, urlcolor=blue]{hyperref}
\RequirePackage{datetime}
\RequirePackage{lastpage}

%%%%%%%%
%: Date-time format
%%%%%%%%

\newdateformat{dmmmyyyydate}{\THEYEAR~\shortmonthname[\THEMONTH]~\THEDAY}
\dmmmyyyydate
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

%%%%%%%%
%: Page dimensions
%%%%%%%%

% Latex base page dimensions.  We override all of this with the geometry package settings above.

%\paperheight  -- set by article.cls according to paper option
%\paperwidth  -- set by article.cls according to paper option
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


\def\JPfoot@page{\pagename~\number\thepage\pageofcountseperator\pageref*{LastPage}}
\def\JPfoot@restrict{\normalfont\textsc{\sffamily\small\textbf{\color{red}}}}
\def\JPfoot@date{\ifnum\number\overfullrule>0 \normalfont\sffamily\small\colorbox{dark-blue}{\color{white}DRAFT \gitdescribe built \today~\currenttime}\else\today\fi}

%TODO: Compute head/footruleraise based on the actual height of the headers/footers
\newlength{\hfrulewidth}%
\setlength{\hfrulewidth}{0.25pt}%
\newlength{\headruleraise}%
\setlength{\headruleraise}{-0.3\baselineskip}%
\def\headrule{\color{dark-blue}\rule[\headruleraise]\textwidth\hfrulewidth}
\newlength{\footruleraise}%
\setlength{\footruleraise}{0.65\baselineskip}%
\def\footrule{\color{dark-blue}\rule[\footruleraise]\textwidth\hfrulewidth}

\def \ps@plain {%
  \let \@mkboth = \@gobbletwo
  \let \@oddhead = \@empty
  \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
  \let \@evenhead = \@empty
  \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
}

%TODO: Running heads on even pages should be the **first** "leftmark" on that page, and on odd pages should be the **last** "rightmark" on that page.
\if@twoside
  \def\ps@headings{%
    \def\@oddhead{\sffamily\rlap{\headrule}\hfil\hfil{\rightmark}}%
    \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
    \def\@evenhead{\sffamily\rlap{\headrule}{\leftmark}\hfil\hfil}%
    \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
    \let\@mkboth\markboth
    \def\sectionmark##1{%
      \markboth {{%
        \ifnum \c@secnumdepth >\z@
          \thesection\quad
        \fi
        ##1}}{{%
        \ifnum \c@secnumdepth >\z@
          \thesection\quad
        \fi
        ##1}}}%
    \def\subsectionmark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\@ne
          \thesubsection\quad
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
          \thesection\quad
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \def\@oddhead{\sffamily\rlap{\headrule}\hfil\hfil{\rightmark}}%
    \def\@oddfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@date}\hfil{\JPfoot@restrict}\hfil{\JPfoot@page}}%
    \def\@evenhead{\sffamily\rlap{\headrule}{\leftmark}\hfil\hfil}%
    \def\@evenfoot{\sffamily\scriptsize\rlap{\footrule}{\JPfoot@page}\hfil{\JPfoot@restrict}\hfil{\JPfoot@date}}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
}

\pagestyle{headings}

%%%%%%%%
%: Section headers
%%%%%%%%

\newcommand*{\@appendperiod}[1]{#1\@addpunct{.}} % @addpunct comes from amsthm

\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname.\quad}

\renewcommand*\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\sffamily\Large\bfseries}}
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
\renewcommand\refname{References}
\renewcommand\indexname{Index}
\renewcommand\figurename{Figure}
\renewcommand\tablename{Table}
\renewcommand\partname{Part}
\renewcommand\appendixname{Appendix}
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
\renewcommand\chapterautorefname{\MakeLowercase\sectionname}
\renewcommand\sectionautorefname{\MakeLowercase\sectionname}
\renewcommand\subsectionautorefname{\MakeLowercase\sectionname}
\renewcommand\subsubsectionautorefname{\MakeLowercase\sectionname}
\renewcommand\paragraphautorefname{\MakeLowercase\sectionname}
\renewcommand\subparagraphautorefname{\MakeLowercase\sectionname}
\renewcommand\pageautorefname{\MakeLowercase\pagename}

%%%%%%%%
%: Title
%%%%%%%%

% Notes for future use.  Here's what really belongs on a title page front and back:

% Title page front/recto elements:
%- Report number, ISSN, and ISBN (top right)
%- Possibly: Report number vertically, rotated both +90 deg and -90 deg from horizontal, tops separated by a line, in the extreme top left of the page.
%- Report title and subtitle, if used (should be the same on the cover, title page, and report documentation page)
%- Volume number (arabic numerals), and volume title
%- Title and numbering of series, if the report is issued in a series
%- Author, principal investigator, editor, and/or compiler, with the primary creator listed first, per standard library cataloging practice
%- Performing organization (author/creator affiliation)
%- Type of report and period covered, where applicable (conditional)
%- Contract or grant number, where applicable (may defer to the copyright page)
%- Sponsoring or issuing organization (if different than the performing organization)
%- Publication data, including place of publication and publisher (which may or may not be the same as the sponsoring organization) (may also defer to the copyright page)
%- Date of publication
%- Publisher's logo
%- Technical requirements (for example, video, audio, digital)
%- Distribution limitations: preliminary, draft, working paper, preprint, security classification, restricted distribution, proprietary information (bottom AND top of page, if present)

% Title page back/verso elements:
%- Author biographical note (previous pubs and affiliation) (top of page)
%- Name and e-mail address of the corresponding author
%- The name, complete address, and phone number of the publisher and how additional copies of the report may be obtained; a Web or email address, or both, may be included.
%- A copyright symbol, year, and the name of the copyright holder
%- Authority to copy the contents or require permission from the producer prior to copying. A request for permission allows the publisher to track the uses of the report.
%- Legal notice (Disclaimer of liability; Not official position; etc.)
%- Edition history (see CMS 1.25)
%- The country in which the report was produced: the words ’Printed in [country]’,
%- Permission for use of proprietary information, such as photo credits
%- Source(s) of support in the form of grants
%- The complete name of the sponsoring organization, including the contract number authorizing the research, and/or any organizations providing funding for the report
%- An ISBN and/or ISSN
%- Library of Congress Cataloging-in-Publication (CIP) Data
%- Citation form
%- Abstracts and subject descriptors/keywords
%- Word counts: text only (excluding abstract, acknowledgments, figure legends, and references)
%- Number of: pages, figures, and tables

\if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
    \setlength{\parindent}{0pt}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null\vfil
    \sffamily
    \vfill%
    \parbox{\textwidth}{%
        \centering%
        \textcolor{burnt-orange}{\rule{\textwidth}{0.25pt}}\par
        \vspace*{6pt}
        {\huge\rmfamily\bfseries\upshape \@title \par}
        \vspace{14pt}
        {\large\rmfamily\mdseries\scshape%
        \begin{tabular}[t]{c}%
          \@author
        \end{tabular}%
        \par}
        \vspace{12pt}
        {\large\rmfamily\mdseries\upshape \@date\par}
        \vspace*{6pt}
        \textcolor{burnt-orange}{\rule{\textwidth}{0.25pt}}\par
    }%
    \vfill%
    \vfill%
    \end{titlepage}%
    \setcounter{footnote}{0}%
%    \global\let\thanks\relax
%    \global\let\maketitle\relax
%    \global\let\@thanks\@empty
%    \global\let\@author\@empty
%    \global\let\@date\@empty
%    \global\let\@title\@empty
%    \global\let\title\relax
%    \global\let\author\relax
%    \global\let\date\relax
%    \global\let\and\relax
  }
\else
  \renewcommand\maketitle{\par
    \begingroup
      \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
      \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
      \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
      \if@twocolumn
        \ifnum \col@number=\@ne
          \@maketitle
        \else
          \twocolumn[\@maketitle]%
        \fi
      \else
        \newpage
        \global\@topnum\z@   % Prevents figures from going at top of page.
        \@maketitle
      \fi
      \thispagestyle{plain}\@thanks
    \endgroup
    \setcounter{footnote}{0}%
%    \global\let\thanks\relax
%    \global\let\maketitle\relax
%    \global\let\@maketitle\relax
%    \global\let\@thanks\@empty
%    \global\let\@author\@empty
%    \global\let\@date\@empty
%    \global\let\@title\@empty
%    \global\let\title\relax
%    \global\let\author\relax
%    \global\let\date\relax
%    \global\let\and\relax
  }
  \def\@maketitle{%
    \newpage
    \null
    \sffamily
    \begin{center}%
      \let \footnote \thanks
      {\LARGE \bfseries \@title \par}%
      \vskip 1.0em%
      {\large
        \lineskip .5em%
        \begin{tabular}[t]{c}%
          \@author
        \end{tabular}\par}%
      %\vskip 1em%
      %{\large \@date}%
    \end{center}%
    \par
    \vskip 1.0em
  }
\fi

%%%%%%%%
%: Abstract
%%%%%%%%

\if@titlepage
  \renewenvironment{abstract}{%
    \titlepage
    \let\footnoterule\relax%
    \renewcommand{\footnotetext}[2][0]{\@textsuperscript{\normalfont{##1}}{##2}\par}%
    \null
    \normalfont
    \setlength{\parindent}{0pt}
    \vfill
    \vfill
    \small\rmfamily\mdseries\upshape  %\hspace{.1\textwidth}\parbox{.8\textwidth}{%
    {\centering\sffamily\large\bfseries \abstractname\par}\medskip
    \renewcommand{\baselinestretch}{1.2}\small\rmfamily\mdseries\upshape%
  }%
  {
    \par
    \vfill
    {%
      \footnotesize\rmfamily\mdseries\upshape \@thanks \par%
    }
    \vfill
    {\footnotesize\rmfamily\mdseries\upshape Copyright \the\year\ by the authors \par}
    \vfill
%    \@ifundefined{BibTeX}
%     {\def\BibTeX{{\rmfamily B\kern-.05em%
%      \textsc{i\kern-.025em b}\kern-.08em%
%      T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}}{}
%    {%
%      \noindent\textsf{\footnotesize \BibTeX:}\par
%      \vspace{.8ex}
%      {\scriptsize\ttfamily\hangindent=2em %
%		@techreport\{xxxxxx,\\
%			xxxxxx = "xxxxxx",\\
%			year = "0000"\}
%      \par}%
%    }
    \bigbreak
%    {\footnotesize\sffamily\upshape \noindent {\bfseries To be cited as:}\par
%      % Using IEEE bibliographic reference format
%      Author, ``Title,'' Institute, Type\ Number, Year\ monthAbbrev
%           , In\ \emph{Source}%
%      . [Online]. Available: {\UrlFont https://www.example.invalid/path/to/paper.pdf}\par
%    }
    \vfill
    \vfill
    \null\endtitlepage
  }
\else
  \renewenvironment{abstract}{%
      \if@twocolumn
        \subsection*{\abstractname}%
      \else
        \small
        {\centering \@startsection{subsection}{2}{\z@}%
                                     {-0.01ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\sffamily\large\bfseries}*{\abstractname}}%
        \quotation
        \noindent\ignorespaces
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi

%%%%%%%%
%: Table of Contents
%%%%%%%%

\renewcommand\tableofcontents{%
  \section*{\contentsname
    \@mkboth{\contentsname}{\contentsname}}%
  \@starttoc{toc}%
}
% Style note: Table of Contents required if report > 20 pages.

%%%%%%%%
%: List of Figures
%%%%%%%%

\renewcommand\listoffigures{%
  \section*{\listfigurename}%
  \@mkboth{\listfigurename}{\listfigurename}%
  \@starttoc{lof}%
}
% Style note: List of Figures & List of Tables required if fig+tables > 5

%%%%%%%%
%: List of Tables
%%%%%%%%

\renewcommand\listoftables{%
  \section*{\listtablename}%
  \@mkboth{\listtablename}{\listtablename}%
  \@starttoc{lot}%
}
% Style note: List of Figures & List of Tables required if fig+tables > 5

%%%%%%%%
%: Bibliography
%%%%%%%%

\renewenvironment{thebibliography}[1]
  {\section*{\refname}%
    \@mkboth{\refname}{\refname}%
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
    \endlist}

%%%%%%%%
%: Index
%%%%%%%%

\renewenvironment{theindex}
  {\if@twocolumn
      \@restonecolfalse
    \else
      \@restonecoltrue
    \fi
    \twocolumn[\section*{\indexname}]%
    \@mkboth{\indexname}{\indexname}%
    \thispagestyle{plain}\parindent\z@
    \parskip\z@ \@plus .3\p@\relax
    \columnseprule \z@
    \columnsep 35\p@
    \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
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

\setlength\abovecaptionskip{17pt} % Not used for tables
\setlength\belowcaptionskip{0pt} % Only used for tables
\def\table@captype{table}
\long\def\@makecaption#1#2{%
  \ifx\@captype\table@captype%
    \sffamily\textbf{#1.} #2\par
    \vskip\belowcaptionskip%
  \else
    \vskip\abovecaptionskip
    \sbox\@tempboxa{\sffamily\textbf{#1.} #2}%
    \ifdim \wd\@tempboxa >\hsize
       \sffamily\textbf{#1.} #2\par
    \else
      \global \@minipagefalse
      \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
    \fi
  \fi
}

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

\def\complainmissinggitdesc{\PackageError{jtpaper}{git describe failed}{%
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
%- \section … \subpara
%- \tableofcontents
%- \listoffigures
%- \listoftables
%- \newblock
%- \subitem \subsubitem
%- \indexspace
%- envs: description abstract verse quotation quote titlepage figure figure* table table* thebibliography theindex
%- counters for part section subsection subsubsection paragraph subparagraph
%- labels for: enum item
%- toc style
%- lof style
%- lot style
%- bib style
%- idx style

\endinput
