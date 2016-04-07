%
% jt-z39-29.bst -- BibTeX bibliography style for ANSI/NISO Z39.29
%
% Created by jthywiss on 2016-04-02.
%
% Copyright (c) 2016 John A. Thywissen. Licensed under the LaTeX Project Public License.
%

%%%%%%%%
%: Description
%%%%%%%%

% This BibTeX bibliography style produces a bibliographic reference list that is intended to
% conform to the standard "ANSI/NISO Z39.29-2005, Bibliographic References".
% The Z39.29 standard is a well-designed, consistent, and clean citation format.  As such,
% it has been adopted as the basis of the CSE, NLM, ICMJE ("Vancouver"), and many
% other citation styles.
%
% This BibTeX bibliography style is compatible with the natbib package, and with author/date
% in-text citations. The BibTeX cross-referencing feature is _NOT_ supported.

% National Information Standards Organization. Bibliographic References. 
%    Bethesda, MD: NISO Press; 2005. (ANSI/NISO Z39.29-2005 (R2010)). 
%    Available from: http://www.niso.org/

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
%: Provenance
%%%%%%%%

% This file started with modified version of vancouver-authoryear, then updated
% with urlbst v0.7's code, and then heavily modified to: 1) Comply with ANSI/NISO Z39.29,
% 2) Integrate somewhat better with other packages, 3) Have a cleaner coding style.
%
%  --------vancouver-authoryear:
%
% URL: https://github.com/baxterai/vancouver_authoryear_bibstyle
% forked from
% URL: https://github.com/gbhutani/vancouver_authoryear_bibstyle
%
% natbib-compatible BibTeX bibliography style `vancouver-authoryear'
% ... changes ... inspired by similar changes made to
% splncs03.bst by Maurizio "Titto" Patrignani of
% Dipartimento di Informatica e Automazione Universita' Roma Tre.
%
% This is derived from `splncsnat.bst, vancouver.bst, and
% vancouver-authoryear.bst (original version by Gaurav Bhutani)'.
%
% --------vancouver:
%
% Copyright 2004  Folkert van der Beek
% URL: http://www.ctan.org/tex-archive/biblio/bibtex/contrib/vancouver/
%
% -------urlbst:
%
% URL: http://purl.org/nxg/dist/urlbst
% Version 0.7, 2011 July 20
% Copyright 2002-11, Norman Gray. Released under the terms of the GNU General Public Licence
%
% -------

%%%%%%%%
%: Fields
%%%%%%%%

ENTRY
  { address
%           Usually the address of a publisher or other type of organization.
%           Put information in this field only if it helps the reader find the
%           thing---for example you should omit the address of a major
%           publisher entirely.  For a PROCEEDINGS or an INPROCEEDINGS,
%           however, it's the address of the conference; for those two entry
%           types, include the publisher's or organization's address, if
%           necessary, in the publisher or organization field.
%    annote
%           Long annotation---for annotated bibliographies (begins sentence).
    assignee
% for patents
    author
%           Name(s) of author(s), in BibTeX name format.
    booktitle
%           Book title when the thing being referenced isn't the whole book.
%           For book entries, the title field should be used instead.
    cartographer
% for maps
    chapter
%           Chapter (or section or whatever) number.
    city
%           The name of the city, national subdivision, and country in which a meeting,
%           conference, or symposium was held.
%           Format: City, SS, CC
    date
%           The date(s) on which a meeting, conference, or symposium was held.
%           Format: YYYY Mmm DD--DD or YYYY Mmm DD--Mmm DD
    day
%           Day of month
    edition
%           Edition of a book---should be an ordinal (e.g., "Second").
    editor
%           Name(s) of editor(s), in BibTeX name format.
%           If there is also an author field, then the editor field should be
%           for the book or collection that the work appears in.
    howpublished
%            How something strange has been published (begins sentence).
    institution
%           Sponsoring institution of a technical report.
    journal
%           Journal name
    key
%           Alphabetizing, labeling, and cross-referencing key
%           (needed when an entry has no author or editor).
    language
%           Language of work.  Added as a note.
    month
%           Month (macros are provided).
    nationality
%           The adjectival form of the country name.  For example, Swiss or Japanese,
%           NOT Switzerland or Japan. (Used in patents.)
    note
%           To help the reader find a reference (begins sentence).
%           ANSI/NISO Z39.29 says: "This element gives the creator of the reference an
%           opportunity to provide additional information that may be of interest to the
%           audience, for example, the commercial format of a videocassette or the system
%           requirements for an electronic document."
    number
%           Number of a journal or technical report, or of a work in a series.
    organization
%           Organization sponsoring a conference (or publishing a manual); if
%           the editor (or author) is empty, and if the organization produces
%           an awkward label or cross reference, you should put appropriately
%           condensed organization information in the key field as well.
    pages
%           Page number or numbers (use `--' to separate a range, use `+'
%           to indicate pages following that don't form a simple range).
    part
%
    publisher
%           Publisher name.
    school
%           School name (for theses).
    series
%           The name of a series or set of books.
%           An individual book will will also have it's own title.
    title
%           The title of the thing you're referred to.
    type
%           Type of a Tech report (e.g., "Research Note") to be used instead of
%           the default "Technical Report"; or, similarly, the type of a
%           thesis; or of a part of a book.
    volume
%           The volume number of a journal or multivolume work.
    year
%           The year should contain only numerals (technically, it should end
%           with four numerals, after purification; doesn't a begin sentence).
    eprint
%           arXiv identifier, the article identifier for the arXiv e-print service.
    doi
%           "Name (characters and/or digits) assigned to an object of intellectual property
%           (physical, digital, or abstract) such as an electronic journal, image, learning
%           object, electronic book, or other kind of content. It provides current information
%           about where the object (or information about it) can be found on the Internet.
%           Information about a digital object, including where to find it, may change over
%           time, but its DOI will not change; it is persistent."
    pubmed
%           PubMed Identifier (PMID)
    url
%           "Uniform Resource Locator. Address of a file or resource accessible on the Internet."
    lastchecked % urlbst
    updated % urlbst
  }
% There are no integer entry variables
  {}
% These string entry variables are used to form the citation label.
% In a storage pinch, sort.label can be easily computed on the fly.
  { label extra.label sort.label short.list }

%%%%%%%%
%:
%%%%%%%%

% Each entry function starts by calling output.bibitem, to write the
% \bibitem and its arguments to the .BBL file.  Then the various fields
% are formatted and printed by output or output.check.  Those functions
% handle the writing of separators (commas, periods, \newblock's),
% taking care not to do so when they are passed a null string.
% Finally, fin.entry is called to add the final period and finish the
% entry.
%
% A bibliographic reference is formatted into a number of `blocks':
% in the open format, a block begins on a new line and subsequent
% lines of the block are indented.  A block may contain more than
% one sentence (well, not a grammatical sentence, but something to
% be ended with a sentence ending period).  The entry functions should
% call new.block whenever a block other than the first is about to be
% started.  They should call new.sentence whenever a new sentence is
% to be started.  The output functions will ensure that if two
% new.sentence's occur without any non-null string being output between
% them then there won't be two periods output.  Similarly for two
% successive new.block's.
%
% The output routines don't write their argument immediately.
% Instead, by convention, that argument is saved on the stack to be
% output next time (when we'll know what separator needs to come
% after it).  Meanwhile, the output routine has to pop the pending
% output off the stack, append any needed separator, and write it.
%
% To tell which separator is needed, we maintain an output.state.
% It will be one of these values:
%       before.all              just after the \bibitem
%       mid.sentence            in the middle of a sentence: comma needed
%                                       if more sentence is output
%       after.sentence          just after a sentence: period needed
%       after.block             just after a block (and sentence):
%                                       period and \newblock needed.
% Note: These styles don't use after.sentence
%
% VAR: output.state : INTEGER           -- state variable for output
%
% The output.nonnull function saves its argument (assumed to be nonnull)
% on the stack, and writes the old saved value followed by any needed
% separator.  The ordering of the tests is decreasing frequency of
% occurrence.
%
% output.nonnull(s) ==
%  BEGIN
%       s := argument on stack
%       if output.state = mid.sentence then
%           write$(pop() * ", ")
%                 -- "pop" isn't a function: just use stack top
%       else
%           if output.state = after.block then
%               write$(add.period$(pop()))
%               newline$
%               write$("\newblock ")
%           else
%               if output.state = before.all then
%                   write$(pop())
%               else        -- output.state should be after.sentence
%                   write$(add.period$(pop()) * " ")
%               fi
%           fi
%           output.state := mid.sentence
%       fi
%       push s on stack
%  END
%
% The output function calls output.nonnull if its argument is non-empty;
% its argument may be a missing field (thus, not necessarily a string)
%
% output(s) ==
%  BEGIN
%       if not empty$(s) then output.nonnull(s)
%       fi
%  END
%
% The output.check function is the same as the output function except that, if
% necessary, output.check warns the user that the t field shouldn't be empty
% (this is because it probably won't be a good reference without the field;
% the entry functions try to make the formatting look reasonable even when
% such fields are empty).
%
% output.check(s,t) ==
%  BEGIN
%       if empty$(s) then
%           warning$("empty " * t * " in " * cite$)
%       else output.nonnull(s)
%       fi
%  END
%
% The output.bibitem function writes the \bibitem for the current entry
% (the label should already have been set up), and sets up the separator
% state for the output functions.  And, it leaves a string on the stack
% as per the output convention.
%
% output.bibitem ==
%  BEGIN
%       newline$
%       write$("\bibitem[")     % for alphabetic labels,
%       write$(label)           % these three lines
%       write$("]{")            % are used
%       write$("\bibitem{")             % this line for numeric labels
%       write$(cite$)
%       write$("}")
%       push "" on stack
%       output.state := before.all
%  END
%
% The fin.entry function finishes off an entry by adding a period to the
% string remaining on the stack.  If the state is still before.all
% then nothing was produced for this entry, so the result will look bad,
% but the user deserves it. (We don't omit the whole entry because the
% entry was cited, and a bibitem is needed to define the citation label.)
%
% fin.entry ==
%  BEGIN
%       write$(add.period$(pop()))
%       newline$
%  END
%
% The new.block function prepares for a new block to be output, and
% new.sentence prepares for a new sentence.
%
% new.block ==
%  BEGIN
%       if output.state <> before.all then
%           output.state := after.block
%       fi
%  END
%
% new.sentence ==
%  BEGIN
%       if output.state <> after.block then
%           if output.state <> before.all then
%               output.state :=  after.sentence
%           fi
%       fi
%  END
%

%% Declaration of integer variables
INTEGERS { output.state before.all mid.sentence after.sentence after.block }

%%%%%%%%
%: Link Output Logic
%%%%%%%%

% urlbst...
STRINGS { 
  openinlinelink closeinlinelink }
INTEGERS { hrefform inlinelinks makeinlinelink
  addeprints adddoiresolver addpubmedresolver }

FUNCTION {init.urlbst.variables}
{
  % The following constants may be adjusted by hand, if desired

  % The first set allow you to enable or disable certain functionality.
  #0 'addeprints :=         % 0=no eprints; 1=include eprints
  #1 'adddoiresolver :=     % 0=no DOI resolver; 1=include it
  #0 'addpubmedresolver :=     % 0=no PUBMED resolver; 1=include it
  #2 'hrefform :=           % 0=no links; 1=hypertex links; 2=hyperref links
  #0 'inlinelinks :=        % 0=URLs explicit; 1=URLs attached to titles

  % The following are internal state variables, not configuration constants,
  % so they shouldn't be fiddled with.
  #0 'makeinlinelink :=     % state variable managed by possibly.setup.inlinelink
  "" 'openinlinelink :=     % ditto
  "" 'closeinlinelink :=    % ditto
}
INTEGERS {
  bracket.state
  outside.brackets
  open.brackets
  within.brackets
  close.brackets
}
% ...urlbst to here

FUNCTION {init.state.consts}
{ #0 'outside.brackets := % urlbst
  #1 'open.brackets :=
  #2 'within.brackets :=
  #3 'close.brackets :=

  #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

% URL prefixes

FUNCTION {bbl.eprinturl}
{ "http://arxiv.org/abs/" }  % prefix to make URL from eprint ref

FUNCTION {bbl.doiurl}
{ "https://doi.org/" }  % prefix to make URL from DOI

FUNCTION {bbl.pubmedurl}
{ "https://www.ncbi.nlm.nih.gov/pubmed/" }  % prefix to make URL from PubMed

% the variables s and t are temporary string holders

STRINGS { s t }

% urlbst
% The following three functions are for handling inlinelink.  They wrap
% a block of text which is potentially output with write$ by multiple
% other functions, so we don't know the content a priori.
% They communicate between each other using the variables makeinlinelink
% (which is true if a link should be made), and closeinlinelink (which holds
% the string which should close any current link.  They can be called
% at any time, but start.inlinelink will be a no-op unless something has
% previously set makeinlinelink true, and the two ...end.inlinelink functions
% will only do their stuff if start.inlinelink has previously set
% closeinlinelink to be non-empty.
% (thanks to 'ijvm' for suggested code here)

FUNCTION {uand}
{ 'skip$ { pop$ #0 } if$ } % 'and' (which isn't defined at this point in the file)

FUNCTION {possibly.setup.inlinelink}
{ makeinlinelink hrefform #0 > uand
    { doi empty$ adddoiresolver uand
        { pubmed empty$ addpubmedresolver uand
            { eprint empty$ addeprints uand
                { url empty$
                    { "" }
                    { url }
                  if$ }
                { bbl.eprinturl eprint * }
              if$ }
            { bbl.pubmedurl pubmed * }
          if$ }
        { bbl.doiurl doi * }
      if$
      % an appropriately-formatted URL is now on the stack
      hrefform #1 = % hypertex
        { "\special {html:<a href=" quote$ * swap$ * quote$ * "> }{" * 'openinlinelink :=
          "\special {html:</a>}" 'closeinlinelink := }
        { "\href {" swap$ * "} {" * 'openinlinelink := % hrefform=#2 -- hyperref
          % the space between "} {" matters: a URL of just the right length can cause "\% newline em"
          "}" 'closeinlinelink := }
      if$
      #0 'makeinlinelink :=
      }
    'skip$
  if$ % makeinlinelink
}

FUNCTION {add.inlinelink}
{ openinlinelink empty$
    'skip$
    { openinlinelink swap$ * closeinlinelink *
      "" 'openinlinelink :=
      }
  if$
}

FUNCTION {output.nonnull.original}
{ 's :=
  output.state mid.sentence =
    { ". " * write$ }
    { output.state after.block =
        { add.period$ write$
          newline$
          "\newblock " write$
        }
        { output.state before.all =
            'write$
            { add.period$ " " * write$ }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

% urlbst...

FUNCTION {output.nonnull}
{ % Save the thing we've been asked to output
  's :=
  % If the bracket-state is close.brackets, then add a close-bracket to
  % what is currently at the top of the stack, and set bracket.state
  % to outside.brackets
  bracket.state close.brackets =
    { "]" *
      outside.brackets 'bracket.state :=
    }
    'skip$
  if$
  bracket.state outside.brackets =
    { % We're outside all brackets -- this is the normal situation.
      % Write out what's currently at the top of the stack, using the
      % original output.nonnull function.
      s
      add.inlinelink
      output.nonnull.original % invoke the original output.nonnull
    }
    { % Still in brackets.  Add open-bracket or (continuation) semicolon, add the
      % new text (in s) to the top of the stack, and move to the close-brackets
      % state, ready for next time (unless inbrackets resets it).  If we come
      % into this branch, then output.state is carefully undisturbed.
      bracket.state open.brackets =
        { " [" * }
        { "; " * } % bracket.state will be within.brackets
      if$
      s *
      close.brackets 'bracket.state :=
    }
  if$
}

% Call this function just before adding something which should be presented in
% brackets.  bracket.state is handled specially within output.nonnull.

FUNCTION {inbrackets}
{ bracket.state close.brackets =
    { within.brackets 'bracket.state := } % reset the state: not open nor closed
    { open.brackets 'bracket.state := }
  if$
}

FUNCTION {format.lastchecked}
{ lastchecked empty$
    { "" }
    { inbrackets "cited " lastchecked * }
  if$
}
% ...urlbst to here

%%%%%%%%
%: Output Functions
%%%%%%%%

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

% This function finishes all entries.

FUNCTION {fin.entry.original}
{
  add.period$
  write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {add.blank}
{  " " * before.all 'output.state :=
}

FUNCTION {no.blank.or.punct}
{  "" * before.all 'output.state :=
}

FUNCTION {add.semicolon}
{
  ";" *
  no.blank.or.punct
}

FUNCTION {new.group}
{
  output.state mid.sentence =
    {  "; " *
      no.blank.or.punct
    }
    'skip$
  if$
}

%%%%%%%%
%: Boolean Logic Functions
%%%%%%%%

% These three functions pop one or two (integer) arguments from the stack
% and push a single one, either 0 or 1.
% The 'skip$ in the `and' and `or' functions are used because
% the corresponding if$ would be idempotent

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

%%%%%%%%
%: Character String Utility Functions
%%%%%%%%

% issues warning if field is empty
% call with
%    "field"  field  warning.if.empty
% Note that the first field must be between quotes
% because it is the fieldname for use in the warning message.

FUNCTION {warning.if.empty}
{ empty$
    { "No "  swap$ * " in " * cite$ * warning$ }
    { pop$ }
  if$
}

% encloses string in pre- and postfix string
% call with
%    prefix postfix  S  enclose.check
% delivers empty string if S empty

FUNCTION {enclose.check}
{ duplicate$ empty$
    { pop$ pop$ pop$
      ""
    }
    { swap$ * * }
  if$
}

% emphasizes top of stack
% call with
%    string" emphasize.check

FUNCTION {emphasize.check}
{ "\Bem{" swap$
  "}"     swap$
  enclose.check
}

% brackets top of stack
% call with
%     "string" bracket.check

FUNCTION {bracket.check}
{ "[" swap$
  "]" swap$
  enclose.check
}

% parenthesizes top of stack
% call with
%     "string" parenthesize

FUNCTION {parenthesize.check}
{ "(" swap$
  ")" swap$
  enclose.check
}

STRINGS {z}

FUNCTION {remove.dots}
{ 'z :=	% expects string on top of the stack, pops the string and assigns it to variable z
  "" % push empty string
  { z empty$ not } % returns 0 if variable z is empty
  { z #1 #1 substring$ % push the first character of variable z
    z #2 global.max$ substring$ 'z := % assigns the 2nd to last character of variable z to variable z
    duplicate$ "\" = % pushes 1 if the last character is "\", otherwise 0
    { * % concatenates the last 2 literals
      z #1 #1 substring$ % push the first character of variable z
      z #2 global.max$ substring$ 'z := % assigns the 2nd to last character of variable z to variable z
      * % concatenates the last 2 literals, i.e. every character, even a dot, following a "\" will be printed
    }
    { duplicate$ "." = % pushes 1 if the last character is ".", otherwise 0
      'pop$ %  pushes the pop$ function
      { * } % concatenates the last 2 literals
    if$ % pops the last character if it is a dot, otherwise concatenates it with the string on top of the stack
    }
    if$
  }
  while$
}

INTEGERS {l}

FUNCTION{string.length}
{
  #1 'l :=
  { duplicate$ duplicate$ #1 l substring$ = not }
    { l #1 + 'l := }
  while$
  pop$ l
}

STRINGS {replace find text}
INTEGERS {find_length}

FUNCTION {find.replace}
{
  'replace :=
  'find :=
  'text :=
  find string.length 'find_length :=
  ""
    { text empty$ not }
    { text #1 find_length substring$ find =
      {
        replace *
        text #1 find_length + global.max$ substring$ 'text :=
      }
      { text #1 #1 substring$ *
        text #2  global.max$ substring$ 'text :=
      }
    if$
    }
  while$
}

% Sometimes we begin a new block only if the block will be big enough.  The
% new.block.checka function issues a new.block if its argument is nonempty;
% new.block.checkb does the same if either of its TWO arguments is nonempty.

FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}

% The new.sentence.check functions are analogous.

FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}

FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}

% Here are some functions for formatting chunks of an entry.
% By convention they either produce a string that can be followed by
% a comma or period (using add.period$, so it is OK to end in a period),
% or they produce the null string.
%
% A useful utility is the field.or.null function, which checks if the
% argument is the result of pushing a `missing' field (one for which no
% assignment was made when the current entry was read in from the database)
% or the result of pushing a string having no non-white-space characters.
% It returns the null string if so, otherwise it returns the field string.
% Its main (but not only) purpose is to guarantee that what's left on the
% stack is a string rather than a missing field.
%
% field.or.null(s) ==
%  BEGIN
%       if empty$(s) then return ""
%       else return s
%  END
%
% Another helper function is emphasize, which returns the argument emphazised,
% if that is non-empty, otherwise it returns the null string.  Italic
% corrections aren't used, so this function should be used when punctation
% will follow the result.
%
% emphasize(s) ==
%  BEGIN
%       if empty$(s) then return ""
%       else return "{\em " * s * "}"
%
% The format.names function formats the argument (which should be in
% BibTeX name format) into "First Von Last, Junior", separated by commas
% and with an "and" before the last (but ending with "et~al." if the last
% of multiple authors is "others").  This function's argument should always
% contain at least one name.
%
% VAR: nameptr, namesleft, numnames: INTEGER
% pseudoVAR: nameresult: STRING         (it's what's accumulated on the stack)
%
% format.names(s) ==
%  BEGIN
%       nameptr := 1
%       numnames := num.names$(s)
%       namesleft := numnames
%       while namesleft > 0
%         do
%                               % for full names:
%           t := format.name$(s, nameptr, "{ff~}{vv~}{ll}{, jj}")
%                               % for abbreviated first names:
%           t := format.name$(s, nameptr, "{f.~}{vv~}{ll}{, jj}")
%           if nameptr > 1 then
%               if namesleft > 1 then nameresult := nameresult * ", " * t
%               else if numnames > 2
%                      then nameresult := nameresult * ","
%                    fi
%                    if t = "others"
%                      then nameresult := nameresult * " et~al."
%                      else nameresult := nameresult * " and " * t
%                    fi
%               fi
%           else nameresult := t
%           fi
%           nameptr := nameptr + 1
%           namesleft := namesleft - 1
%         od
%       return nameresult
%  END
%
% The format.authors function returns the result of format.names(author)
% if the author is present, or else it returns the null string
%
% format.authors ==
%  BEGIN
%       if empty$(author) then return ""
%       else return format.names(author)
%       fi
%  END
%
% Format.editors is like format.authors, but it uses the editor field,
% and appends ", editor" or ", editors"
%
% format.editors ==
%  BEGIN
%       if empty$(editor) then return ""
%       else
%           if num.names$(editor) > 1 then
%               return format.names(editor) * ", editors"
%           else
%               return format.names(editor) * ", editor"
%           fi
%       fi
%  END
%
% Other formatting functions are similar, so no "comment version" will be
% given for them.
%
% The `pop$' in this function gets rid of the duplicate `empty' value and
% the `skip$' returns the duplicate field value

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "{\em " swap$ * "}" * }
  if$
}

% For several functions we'll need to connect two strings with a
% tie (~) if the second one isn't very long (fewer than 3 characters).
% The tie.or.space.connect function does that.  It concatenates the two
% strings on top of the stack, along with either a tie or space between
% them, and puts this concatenation back onto the stack:
%
% tie.or.space.connect(str1,str2) ==
%    BEGIN
%       if text.length$(str2) < 3
%         then return the concatenation of str1, "~", and str2
%         else return the concatenation of str1, " ", and str2
%    END

FUNCTION {tie.or.space.prefix}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$
}

FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }

FUNCTION {space.word}
{ " " swap$ * " " * }

%%%%%%%%
%: Natural Language Strings
%%%%%%%%

 % Here are the language-specific definitions for explicit words.
 % Each function has a name bbl.xxx where xxx is the English word.
 % The language selected here is ENGLISH

FUNCTION {bbl.and}
{ "and"}

FUNCTION {bbl.etal}
{ "et~al." }

FUNCTION {bbl.editors}
{ "eds." }

FUNCTION {bbl.editor}
{ "editor" }

FUNCTION {bbl.cartographers}
{ "cartographers" }

FUNCTION {bbl.cartographer}
{ "cartographer" }

FUNCTION {bbl.inventors}
{ "inventors" }

FUNCTION {bbl.inventor}
{ "inventor" }

FUNCTION {bbl.assignees}
{ "assignees" }

FUNCTION {bbl.assignee}
{ "assignee" }

FUNCTION {bbl.edition}
{ "ed." }

FUNCTION {bbl.volume}
{ "vol." }

FUNCTION {bbl.of}
{ "of" }

FUNCTION {bbl.number}
{ "no." }

FUNCTION {bbl.in}
{ "in" }

FUNCTION {bbl.pages}
{ "p." }

FUNCTION {bbl.page}
{ "p." }

FUNCTION {bbl.chapter}
{ "Chapter" }

FUNCTION {bbl.reportno}
{ "Report No.:" }

FUNCTION {bbl.mthesis}
{ "Master's thesis" }

FUNCTION {bbl.phdthesis}
{ "Dissertation" }

FUNCTION {bbl.urlintro}
{ "Available from: " }  % prefix before URL; typically "Available from:" or "URL":

FUNCTION {bbl.onlinestring}
{ "Internet" }  % indication that resource is online; typically "Internet"

FUNCTION {bbl.citedstring}
{ "cited " }  % indicator of citation date; typically "cited "

FUNCTION {bbl.linktextstring}
{ "[link]" }  % dummy link text; typically "[link]"

FUNCTION {bbl.eprintprefix}
{ "arXiv:" }  % text prefix printed before eprint ref; typically "arXiv:"

FUNCTION {bbl.doiprefix}
{ "doi:" }  % text prefix printed before DOI ref; typically "doi:"

FUNCTION {bbl.pubmedprefix}
{ "PMID:" }  % text prefix printed before PubMed ref; typically "PMID:"

FUNCTION {bbl.first}
{ "1st" }

FUNCTION {bbl.second}
{ "2nd" }

FUNCTION {bbl.third}
{ "3rd" }

FUNCTION {bbl.fourth}
{ "4th" }

FUNCTION {bbl.fifth}
{ "5th" }

FUNCTION {bbl.st}
{ "st" }

FUNCTION {bbl.nd}
{ "nd" }

FUNCTION {bbl.rd}
{ "rd" }

FUNCTION {bbl.th}
{ "th" }

FUNCTION {bbl.dateunknown}
{ "date unknown" }

MACRO {jan} {"Jan"}

MACRO {feb} {"Feb"}

MACRO {mar} {"Mar"}

MACRO {apr} {"Apr"}

MACRO {may} {"May"}

MACRO {jun} {"Jun"}

MACRO {jul} {"Jul"}

MACRO {aug} {"Aug"}

MACRO {sep} {"Sep"}

MACRO {oct} {"Oct"}

MACRO {nov} {"Nov"}

MACRO {dec} {"Dec"}

%%%%%%%%
%: Convert to Ordinal Number
%%%%%%%%

FUNCTION {eng.ord}
{ duplicate$ "1" swap$ *
  #-2 #1 substring$ "1" =
     { bbl.th * }
     { duplicate$ #-1 #1 substring$
       duplicate$ "1" =
         { pop$ bbl.st * }
         { duplicate$ "2" =
             { pop$ bbl.nd * }
             { "3" =
                 { bbl.rd * }
                 { bbl.th * }
               if$
             }
           if$
          }
       if$
     }
   if$
}

%%%%%%%%
%: Field Formatting and Output
%%%%%%%%

FUNCTION {bibinfo.check}
{ swap$
  duplicate$ missing$
    {
      pop$ pop$
      ""
    }
    { duplicate$ empty$
        {
          swap$ pop$
        }
        { swap$
          pop$
        }
      if$
    }
  if$
}

FUNCTION {bibinfo.warn}
{ swap$
  duplicate$ missing$
    {
      swap$ "missing " swap$ * " in " * cite$ * warning$ pop$
      ""
    }
    { duplicate$ empty$
        {
          swap$ "empty " swap$ * " in " * cite$ * warning$
        }
        { swap$
          pop$
        }
      if$
    }
  if$
}

STRINGS  { bibinfo}
INTEGERS { nameptr namesleft numnames }

FUNCTION {format.names}
{ 'bibinfo :=
  duplicate$ empty$ 'skip$ {
  % hack-ish: Put spaces after initials
  "." ". " find.replace 
  % hack-ish: Strip protected trailing spaces
  " }" "}" find.replace 
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}, {ff}{ jj}"
      format.name$
      bibinfo bibinfo.check
      % Fix-up when no first name
      duplicate$ #-1 #2 substring$ ", " =
        { duplicate$
          text.length$ #2 -
          text.prefix$ }
        'skip$
      if$
      't :=
      nameptr #1 >
        {
          nameptr #10
          #1 + =
          numnames #10
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { "; " * t * }
            {
              ";" *
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {
                  " " * bbl.etal *
                }
                { " " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  } if$
}


FUNCTION {format.authors}
{ author "author" format.names
}

FUNCTION {format.organizations}
{ organization "organization" bibinfo.check
}

FUNCTION {get.bbl.editor}
{ editor num.names$ #1 > 'bbl.editors 'bbl.editor if$ }

FUNCTION {get.bbl.cartographer}
{ cartographer num.names$ #1 > 'bbl.cartographers 'bbl.cartographer if$ }

FUNCTION {get.bbl.inventor}
{ author num.names$ #1 > 'bbl.inventors 'bbl.inventor if$ }

FUNCTION {get.bbl.assignee}
{ assignee num.names$ #1 > 'bbl.assignees 'bbl.assignee if$ }

FUNCTION {format.editors}
{ editor "editor" format.names duplicate$ empty$ 'skip$
    {
      "," *
      " " *
      get.bbl.editor
      *
    }
  if$
}

FUNCTION {format.assignees}
{ assignee "assignee" format.names duplicate$ empty$ 'skip$
    {
      "," *
      " " *
      get.bbl.assignee
      *
    }
  if$
}

FUNCTION {format.cartographers}
{ cartographer "cartographer" format.names duplicate$ empty$ 'skip$
    {
      "," *
      " " *
      get.bbl.cartographer
      *
    }
  if$
}

FUNCTION {format.inventors}
{ author "author" format.names duplicate$ empty$ 'skip$
    {
      "," *
      " " *
      get.bbl.inventor
      *
    }
  if$
}

FUNCTION {format.language}
{ language empty$
    { "" }
    { language #1 #1 substring$
      duplicate$ "{" =
        'skip$
        { "u" change.case$ }
      if$
      language #2 global.max$ substring$ * "language" bibinfo.check
    }
  if$
}

FUNCTION {format.note}
{
 note empty$
    { "" }
    { note #1 #1 substring$
      duplicate$ "{" =
        'skip$
        { output.state mid.sentence =
          { "l" }
          { "u" }
        if$
        change.case$
        }
      if$
      note #2 global.max$ substring$ * "note" bibinfo.check
    }
  if$
}

% The format.title function is used for non-book-like titles.
% For most styles we convert to lowercase (except for the very first letter,
% and except for the first one after a colon (followed by whitespace)),
% and hope the user has brace-surrounded words that need to stay capitalized;
% for some styles, however, we leave it as it is in the database.

FUNCTION {format.title}
{ title "title" bibinfo.check
}

FUNCTION {format.type}
{ type empty$
  'skip$
  { inbrackets type }
  if$
}

FUNCTION {author.editor.key.full}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor }
      if$
    }
    { author }
  if$
}

FUNCTION {author.key.full}
{ author empty$
    { key empty$
         { cite$ #1 #3 substring$ }
          'key
      if$
    }
    { author }
  if$
}

FUNCTION {editor.key.full}
{ editor empty$
    { key empty$
         { cite$ #1 #3 substring$ }
          'key
      if$
    }
    { editor }
  if$
}

FUNCTION {make.full.names}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.full
    { type$ "proceedings" =
        'editor.key.full
        'author.key.full
      if$
    }
  if$
}

FUNCTION {output.bibitem.original}
{ newline$
  "\bibitem[{" write$
  label write$
  ")" make.full.names duplicate$ short.list =
     { pop$ }
     { * }
   if$
  "}]{" * write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

% The n.dashify function makes each single `-' in a string a double `--'
% if it's not already
%
% pseudoVAR: pageresult: STRING         (it's what's accumulated on the stack)
%
% n.dashify(s) ==
%  BEGIN
%       t := s
%       pageresult := ""
%       while (not empty$(t))
%         do
%           if (first character of t = "-")
%             then
%               if (next character isn't)
%                 then
%                   pageresult := pageresult * "--"
%                   t := t with the "-" removed
%                 else
%                   while (first character of t = "-")
%                     do
%                       pageresult := pageresult * "-"
%                       t := t with the "-" removed
%                     od
%               fi
%             else
%               pageresult := pageresult * the first character
%               t := t with the first character removed
%           fi
%         od
%       return pageresult
%  END

FUNCTION {n.dashify}
{
  't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
                { "-" *
                  t #2 global.max$ substring$ 't :=
                }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
      if$
    }
  while$
}

FUNCTION {word.in}
{ bbl.in capitalize
  ":" *
  " " * }

FUNCTION {format.journal.title}
{
  journal
  "journal" bibinfo.check
  remove.dots
  emphasize
}

FUNCTION {format.journal.date}
{
  month "month" bibinfo.check
  duplicate$ empty$
  year "year" bibinfo.check
  duplicate$ empty$
    { swap$
        'skip$
        { "there's a month but no year in " cite$ * warning$ }
      if$
      *
    }
    { swap$ 
        'skip$
        { "~" * swap$ }
      if$
      *
      remove.dots
    }
  if$
  day empty$
    'skip$
    { month empty$
        { "there's a day but no month in " cite$ * warning$ }
        'skip$
      if$
      "~" * day *
    }
  if$
  duplicate$ empty$
    'skip$
    { before.all 'output.state :=
      after.sentence 'output.state :=
    }
  if$
}

% The format.date function is for the month and year, but we give a warning if
% there's an empty year but the month is there, and we return the empty string
% if they're both empty.
% If a day is found, ties the day on the end.

FUNCTION {format.date}
{ year empty$
    { month empty$
        { "" }
        { "there's a month but no year in " cite$ * warning$
          month
        }
      if$
    }
    { month empty$
        'year
        { year "~" * month * }
      if$
    }
  if$
  day empty$
    'skip$
    { month empty$
        { "there's a day but no month in " cite$ * warning$ }
        'skip$
      if$
      "~" * day *
    }
  if$
}

% The format.btitle is for formatting the title field when it is a book-like
% entry---the style used here keeps it in uppers-and-lowers and emphasizes it.

FUNCTION {format.btitle}
{ title "title" bibinfo.check
  emphasize
}

% The either.or.check function complains if both fields or an either-or pair
% are nonempty.
%
% either.or.check(t,s) ==
%  BEGIN
%       if empty$(s) then
%           warning$(can't use both " * t * " fields in " * cite$)
%       fi
%  END

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

% The format.bvolume function is for formatting the volume of a multivolume
% If both a volume and a series field are there, we assume the volume number
% belongs in the series statement, and do nothing here.
% This function is called in mid-sentence.

FUNCTION {format.bvolume}
{ series empty$ not
  volume empty$ or
    { "" }
    { bbl.volume volume tie.or.space.prefix
      "volume" bibinfo.check * *
    }
  if$
}

FUNCTION {format.series.statement}
{ series empty$
  { "" }
  { "("
    series "series" bibinfo.check *
    volume empty$
    { "" }
    { "; "
      bbl.volume
      volume tie.or.space.prefix "volume" bibinfo.check * *
      *
    }
    if$
    *
    number empty$
    { "" }
    { "; "
      bbl.number
      number tie.or.space.prefix "number" bibinfo.check * *
      *
    }
    if$
    *
    ")" *
  }
  if$
}

FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}

FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$
  }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}

FUNCTION {convert.edition}
{ extract.num "l" change.case$ 's :=
  s "first" = s "1" = or
    { bbl.first 't := }
    { s "second" = s "2" = or
        { bbl.second 't := }
        { s "third" = s "3" = or
            { bbl.third 't := }
            { s "fourth" = s "4" = or
                { bbl.fourth 't := }
                { s "fifth" = s "5" = or
                    { bbl.fifth 't := }
                    { s #1 #1 substring$ is.num
                        { s eng.ord 't := }
                        { edition 't := }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  t
}

% The format.edition function appends " edition" to the edition, if present.
% We lowercase the edition (it should be something like "Third"), because
% this doesn't start a sentence.

FUNCTION {format.edition}
{ edition duplicate$ empty$ 'skip$
    {
      convert.edition
      output.state mid.sentence =
        { "l" }
        { "t" }
      if$ change.case$
      "edition" bibinfo.check
      " " * bbl.edition *
    }
  if$
}

% The format.pages function is used for formatting a page range in a book
% (and in rare circumstances, an article).
%
% The multi.page.check function examines the page field for a "-" or "," or "+"
% so that format.pages can use "page" instead of "pages" if none exists.
% Note: global.max$ here means "take the rest of the string"
%
% VAR: multiresult: INTEGER     (actually, a boolean)
%
% multi.page.check(s) ==
%  BEGIN
%       t := s
%       multiresult := false
%       while ((not multiresult) and (not empty$(t)))
%         do
%           if (first character of t = "-" or "," or "+")
%             then multiresult := true
%             else t := t with the first character removed
%           fi
%         od
%       return multiresult
%  END

INTEGERS { multiresult }

FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

% This function doesn't begin a sentence so "pages" isn't capitalized.
% Other functions that use this should keep that in mind.

FUNCTION {format.pages}
{ pages duplicate$ empty$ 'skip$
    { duplicate$ multi.page.check
        {
          bbl.pages swap$
          n.dashify
        }
        {
          bbl.page swap$
        }
      if$
      tie.or.space.prefix
      "pages" bibinfo.check
      * *
    }
  if$
}

FUNCTION {format.journal.pages}
{ pages duplicate$ empty$ 'pop$
    { swap$ duplicate$ empty$
        { pop$ pop$ format.pages }
        {
          ":" *
          swap$
          n.dashify
          "pages" bibinfo.check
          *
        }
      if$
    }
  if$
}

FUNCTION {format.vol.num}
{ volume field.or.null
  duplicate$ empty$ 'skip$
    {
      "volume" bibinfo.check
    }
  if$
  number "number" bibinfo.check duplicate$ empty$ 'skip$
    {
      swap$ duplicate$ empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
      swap$
      "(" swap$ * ")" *
    }
  if$ *
}

% The format.vol.num.pages function is for the volume, number, and page range
% of a journal article.  We use the format:  vol(number):pages, with some
% variations for empty fields.  This doesn't begin a sentence.

FUNCTION {format.vol.num.pages}
{ volume field.or.null
  duplicate$ empty$ 'skip$
    {
      "volume" bibinfo.check
    }
  if$
  number "number" bibinfo.check duplicate$ empty$ 'skip$
    {
      swap$ duplicate$ empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
      swap$
      "(" swap$ * ")" *
    }
  if$ *
  format.journal.pages
}

% The format.chapter.pages, if the chapter is present, puts whatever is in the
% type field (or else "chapter" if type is empty) in front of a chapter number.
% It then appends the pages, if present.  This doesn't begin a sentence.

FUNCTION {format.chapter.pages}
{ chapter empty$
  'format.pages
  { type empty$
    { bbl.chapter }
    { type "l" change.case$
      "type" bibinfo.check
    }
    if$
    chapter tie.or.space.prefix
    "chapter" bibinfo.check
    * *
    pages empty$
    'skip$
    { "; " * format.pages * }
    if$
  }
  if$
}

FUNCTION {format.booktitle}
{
  booktitle "booktitle" bibinfo.check
  emphasize
}

% The format.in.ed.booktitle function is used for starting out a sentence
% that begins "In <booktitle>", putting an editor before the title if one
% exists.

FUNCTION {format.in.ed.booktitle}
{ format.booktitle duplicate$ empty$ 'skip$
    {
      editor "editor" format.names duplicate$ empty$ 'pop$
{
  "," *
  " " *
  get.bbl.editor
  ". " *
  * swap$
  * }
      if$
      word.in swap$ *
    }
  if$
}

FUNCTION {format.in.ed.title}
{ format.title 
  duplicate$ empty$
    'skip$
    {
      editor "editor" format.names
      duplicate$ empty$
        'pop$
        {
          "," *
          " " *
          get.bbl.editor
          ". " *
          * swap$
          *
        }
      if$
      word.in swap$ *
    }
  if$
}

% The function empty.misc.check complains if all six fields are empty, and
% if there's been no sorting or alphabetic-label complaint.

FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

% The function format.thesis.type returns either the (case-changed) type field,
% if it is defined, or else the default string based on the entry type
% (like "Master's thesis" or "PhD thesis").

FUNCTION {format.thesis.type}
{ type empty$
    { type$ "phdthesis" =
        { inbrackets bbl.phdthesis "l" change.case$ }
        'skip$
      if$
      type$ "mastersthesis" =
        { inbrackets bbl.mthesis "l" change.case$ }
        'skip$
      if$
    }
    { format.type }
  if$
}

FUNCTION {format.org.or.pub}
{ 't :=
  ""
  address empty$ t empty$ and
    'skip$
    {
      address "address" bibinfo.check *
      t empty$
        'skip$
        { address empty$
            'skip$
            { ": " * }
          if$
          t *
        }
      if$
    }
  if$
}

FUNCTION {format.publisher.address}
{ publisher "publisher" bibinfo.warn format.org.or.pub
}

FUNCTION {format.organization.address}
{ organization "organization" bibinfo.check format.org.or.pub
}

FUNCTION {format.institution.address}
{ institution "institution" bibinfo.check format.org.or.pub
}


% urlbst...
% functions for making hypertext links.
% In all cases, the stack has (link-text href-url)

% make 'null' specials
FUNCTION {make.href.null}
{
  pop$
}

% make hypertex specials
FUNCTION {make.href.hypertex}
{
  "\special {html:<a href=" quote$ *
  swap$ * quote$ * "> }" * swap$ *
  "\special {html:</a>}" *
}

% make hyperref specials
FUNCTION {make.href.hyperref}
{
  "\href {" swap$ * "} {\nolinkurl{" * swap$ * "}}" *
}

FUNCTION {make.href}
{ hrefform #2 =
    'make.href.hyperref      % hrefform = 2
    { hrefform #1 =
        'make.href.hypertex  % hrefform = 1
        'make.href.null      % hrefform = 0 (or anything else)
      if$
    }
  if$
}

FUNCTION {format.url}
{ inlinelinks #1 = url empty$ or
   { "" }
   { hrefform #1 =
       { % special case -- add HyperTeX specials
         bbl.urlintro "\url{" url * "}" * url make.href.hypertex * }
       { bbl.urlintro "\url{" * url * "}" * }
     if$
   }
  if$
}

FUNCTION {format.eprint}
{ eprint empty$
    { "" }
    { bbl.eprintprefix eprint * bbl.eprinturl eprint * make.href }
  if$
}

FUNCTION {format.doi}
{ doi empty$
    { "" }
    { bbl.doiprefix doi * bbl.doiurl doi * make.href }
  if$
}

FUNCTION {format.pubmed}
{ pubmed empty$
    { "" }
    { bbl.pubmedprefix pubmed * bbl.pubmedurl pubmed * make.href }
  if$
}

FUNCTION {output.url}
{ new.block
  inlinelinks url empty$ or
    'skip$ % links were inline -- don't repeat them, or URL not given
    { format.url output
      new.block
    }
  if$
}

FUNCTION {output.identifiers}
{
  new.block
  inlinelinks
    'skip$ % links were inline -- don't repeat them
    {
%      addisbn isbn empty$ not and
%        { "ISBN: " isbn * output.nonnull
%          new.sentence
%        }
%        'skip$
%      if$
      addeprints eprint empty$ not and
        { format.eprint output.nonnull
          new.sentence
        }
        'skip$
      if$
      addpubmedresolver pubmed empty$ not and
        { format.pubmed output.nonnull
          new.sentence
        }
        'skip$
      if$
      adddoiresolver doi empty$ not and
        { format.doi output.nonnull
          new.sentence
        }
        'skip$
      if$
%      addissn issn empty$ not and
%        { "ISSN: " issn * output.nonnull
%          new.sentence
%        }
%        'skip$
%      if$
      new.block
    }
  if$
}

% Wrapper for output.bibitem.original.
% If the URL field is not empty, set makeinlinelink to be true,
% so that an inline link will be started at the next opportunity

FUNCTION {output.bibitem}
{ outside.brackets 'bracket.state :=
  output.bibitem.original
  inlinelinks url empty$ not doi empty$ not or pubmed empty$ not or eprint empty$ not or and
    { #1 'makeinlinelink := }
    { #0 'makeinlinelink := }
  if$
}

% Wrapper for fin.entry.original

FUNCTION {fin.entry}
{
  makeinlinelink       % ooops, it appears we didn't have a title for inlinelink
    { possibly.setup.inlinelink % add some artificial link text here, as a fallback
      bbl.linktextstring output.nonnull }
    'skip$
  if$
  bracket.state close.brackets = % urlbst
    { "]" * }
    'skip$
  if$
  fin.entry.original
}

%%%%%%%%
%: Entry Types
%%%%%%%%

% Now we define the type functions for all entry types that may appear
% in the .BIB file---e.g., functions like `article' and `book'.  These
% are the routines that actually generate the .BBL-file output for
% the entry.  These must all precede the READ command.  In addition, the
% style designer should have a function `default.type' for unknown types.

% Entire Monograph

FUNCTION {book}
{ output.bibitem

  % Authorship Group
  author empty$
    { editor empty$
        { format.organizations "organization" output.check }
        { format.editors "author and editor" output.check }
      if$
    }
    { format.authors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.btitle "title" output.check
  format.bvolume output
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  format.publisher.address output
  new.group
  format.date "year" output.check
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Part of Monograph
% An inbook is a piece of a book: either a chapter and/or a page range.

FUNCTION {inbook}
{ output.bibitem

  % Authorship Group
  author empty$
    { editor empty$
        { format.organizations "organization" output.check }
        { format.editors "author and editor" output.check }
      if$
    }
    { format.authors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.btitle "title" output.check
  format.bvolume output
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  format.publisher.address output
  new.group
  format.date "year" output.check
  new.sentence
  format.chapter.pages output
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Contribution to Monograph
% An incollection is like inbook, but where there is a separate title
% for the referenced thing (and perhaps an editor for the whole).

FUNCTION {incollection}
{ output.bibitem

  % Authorship Group
  format.authors "author" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  new.block

  % Connective Phrase, Authorship Group, and Title Group
  format.in.ed.booktitle "booktitle" output.check
  format.bvolume output
  new.block

  % Edition Group
  format.edition output
  new.block

  % Imprint Group
  format.publisher.address output
  new.group
  format.date "year" output.check
  new.sentence
  format.chapter.pages output
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Journal Article

FUNCTION {article}
{ output.bibitem

  % Authorship Group
  format.authors "author" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  type empty$
    'skip$
    { format.type output }
  if$
  new.block

  % Title Group
  format.journal.title output
  new.block

  % No Edition Group

  % Imprint Group
  format.journal.date "year" output.check
  add.semicolon
  format.vol.num.pages output
  new.block

  % No Series Statement Group

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Entire Conference Proceedings

FUNCTION {proceedings}
{ output.bibitem

  % Authorship Group
  editor empty$
    { organization "organization" bibinfo.check output }
    { format.editors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.btitle "title" output.check
  date empty$
    'skip$
    { "; " date * no.blank.or.punct output }
  if$
  city empty$
    'skip$
    { "; " city * no.blank.or.punct output }
  if$
  new.block

  % (No Edition Group)

  % Imprint Group
  publisher empty$
    { format.organization.address }
    { format.publisher.address }
  if$ output
  new.group
  format.date "year" output.check
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Conference Paper

FUNCTION {inproceedings}
{ output.bibitem

  % Authorship Group
  format.authors "author" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  new.block

  % Connective Phrase, Authorship Group, and Title Group
  format.in.ed.booktitle "booktitle" output.check
  date empty$
    'skip$
    { "; " date * no.blank.or.punct output }
  if$
  city empty$
    'skip$
    { "; " city * no.blank.or.punct output }
  if$
  new.block

  % (No Edition Group)

  % Imprint Group
  publisher empty$
    { format.organization.address }
    { format.publisher.address }
  if$ output
  new.group
  format.date "year" output.check
  new.sentence
  format.chapter.pages output
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% The conference function is included for Scribe compatibility.

FUNCTION {conference}
{inproceedings}

% Technical Report

FUNCTION {techreport}
{ output.bibitem

  % Authorship Group
  author empty$
    { editor empty$
        { format.organizations "organization" output.check }
        { format.editors "author and editor" output.check }
      if$
    }
    { format.authors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  format.bvolume output
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  format.institution.address output
  new.group
  format.date "year" output.check
  new.block

  % Series Statement Group
  format.series.statement output
  type output
  new.block

  % Notes Group
  number empty$
    'skip$
    {  bbl.reportno "~" * number * output }
  if$
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Dissertation or Thesis

FUNCTION {phdthesis}
{ output.bibitem
  % Authorship Group
  format.authors "author" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  format.thesis.type output
  new.block

  % No Edition Group

  % Imprint Group
  school "school" bibinfo.warn format.org.or.pub output
  new.group
  format.date "year" output.check

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

FUNCTION {mastersthesis}
{phdthesis}

% Patent
%       Required: author, assignee, title, number, year, month [Mmm~DD]
%       Optional: nationality, type, url, language, note

FUNCTION {patent}
{ output.bibitem
  % Authorship Group
  format.inventors "inventor" output.check
  new.group
  format.assignees "assignee" output.check
  new.block

  % Title Group (Analytic)
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title
  "title" output.check
  new.block

  % Title Group (Collective)
  nationality empty$
    { "" }
    { nationality " " * }
  if$
  type empty$
    { "Patent" }
    'type
  if$
  nationality empty$
    { "t" change.case$ }
    { "l" change.case$ }
  if$
  * " " *
  number "number" bibinfo.warn *
  output.nonnull
  new.block

  % No Edition Group

  % Imprint Group
  format.date "year" output.check
  new.block

  % No Series Statement Group

  % Notes Group
  output.url
  % classification numbers here (future?)
  % application number and date here (future?)
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Map

FUNCTION {map}
{ output.bibitem

  % Authorship Group
  format.cartographers "cartographer" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  format.type "type" output.check
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  format.publisher.address output
  new.group
  format.date "year" output.check
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% Webpage
%       Required: title, url
%       Optional: author, note, year, month, lastchecked

FUNCTION {webpage}
{ output.bibitem

  % Authorship Group
  author empty$
    { editor empty$
        { format.organizations "organization" output.check }
        { format.editors "author and editor" output.check }
      if$
    }
    { format.authors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  type empty$
    { inbrackets bbl.onlinestring }
    { format.type }
  if$ output
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  publisher empty$
    { organization empty$
        'skip$
        { format.organization.address output }
      if$
    }
    { format.publisher.address output }
  if$
  new.group
  format.date "year" output.check
  format.lastchecked output
  new.block

  % Series Statement Group
  format.series.statement output
  new.block

  % Notes Group
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
}

% An unpublished is something that hasn't been published.
%       Required: author, title, note
%       Optional: month, year

FUNCTION {unpublished}
{ output.bibitem

  % Authorship Group
  format.authors "author" output.check
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  type empty$
    'skip$
    { format.type output }
  if$
  new.block

  % No Edition Group

  % Imprint Group
  year empty$
    { "[" bbl.dateunknown * "]" * output }
    { format.date output }
  if$
  new.block

  % No Series Statement Group

  % Notes Group
  output.url
  output.identifiers
  format.note "note" output.check

  fin.entry
}

% A misc is something that doesn't fit elsewhere.
%       Required: at least one of the `optional' fields
%       Optional: author, title, howpublished, month, year, note

FUNCTION {misc}
{ output.bibitem

  % Authorship Group
  author empty$
    { editor empty$
        { format.organizations "organization" output.check }
        { format.editors "author and editor" output.check }
      if$
    }
    { format.authors output.nonnull }
  if$
  new.block

  % Title Group
  title empty$ 'skip$ 'possibly.setup.inlinelink if$
  format.title "title" output.check
  type empty$
    'skip$
    { format.type output }
  if$
  new.block

  % Edition Group
  format.edition output
  new.sentence
  author empty$ not
  editor empty$ not
  and
    { format.editors output }
    'skip$
  if$
  new.block

  % Imprint Group
  publisher empty$
    { format.organization.address }
    { format.publisher.address }
  if$ output
  new.group
  format.date "year" output.check
  new.block

  % Notes Group
  howpublished output
  output.url
  format.language output
  output.identifiers
  format.note output

  fin.entry
  empty.misc.check
}

% A manual is technical documentation.
%       Required: title
%       Optional: author, organization, address, edition, month, year, note

FUNCTION {manual}
{misc}

% A booklet is a bound thing without a publisher or sponsoring institution.
%       Required: title
%       Optional: author, howpublished, address, month, year, note

FUNCTION {booklet}
{ misc }

FUNCTION {default.type} { misc }

%%%%%%%%
%: Read Bibliography Data File
%%%%%%%%

% Now we read in the .BIB entries.

READ

%%%%%%%%
%: Sorting
%%%%%%%%

% The sortify function converts to lower case after purify$ing; it's
% used in sorting and in computing alphabetic labels after sorting
%
% The chop.word(w,len,s) function returns either s or, if the first len
% letters of s equals w (this comparison is done in the third line of the
% function's definition), it returns that part of s after w.

FUNCTION {sortify}
{ purify$
  "l" change.case$
}
INTEGERS { len }

FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}

% This long comment applies only to alphabetic labels
%
% The format.lab.names function makes a short label by using the initials of
% the von and Last parts of the names (but if there are more than four names,
% (i.e., people) it truncates after three and adds a superscripted "+";
% it also adds such a "+" if the last of multiple authors is "others").
% If there is only one name, and its von and Last parts combined have just
% a single name-token ("Knuth" has a single token, "Brinch Hansen" has two),
% we take the first three letters of the last name.  The boolean
% et.al.char.used tells whether we've used a superscripted "+", so that we
% know whether to include a LaTeX macro for it.
%
% format.lab.names(s) ==
%  BEGIN
%       numnames := num.names$(s)
%       if numnames > 1 then
%           if numnames > 4 then
%               namesleft := 3
%           else
%               namesleft := numnames
%           nameptr := 1
%           nameresult := ""
%           while namesleft > 0
%             do
%               if (name_ptr = numnames) and
%                    format.name$(s, nameptr, "{ff }{vv }{ll}{ jj}") = "others"
%                  then nameresult := nameresult * "{\etalchar{+}}"
%                       et.al.char.used := true
%                  else nameresult := nameresult *
%                               format.name$(s, nameptr, "{v{}}{l{}}")
%               nameptr := nameptr + 1
%               namesleft := namesleft - 1
%             od
%           if numnames > 4 then
%               nameresult := nameresult * "{\etalchar{+}}"
%               et.al.char.used := true
%       else
%           t := format.name$(s, 1, "{v{}}{l{}}")
%           if text.length$(t) < 2 then % there's just one name-token
%               nameresult := text.prefix$(format.name$(s,1,"{ll}"),3)
%           else
%               nameresult := t
%           fi
%       fi
%       return nameresult
%  END
%
% Exactly what fields we look at in constructing the primary part of the label
% depends on the entry type; this selectivity (as opposed to, say, always
% looking at author, then editor, then key) helps ensure that "ignored" fields,
% as described in the LaTeX book, really are ignored.  Note that MISC is part
% of the deepest `else' clause in the nested part of calc.label; thus, any
% unrecognized entry type in the database is handled correctly.
%
% There is one auxiliary function for each of the four different sequences of
% fields we use.  The first of these functions looks at the author field, and
% then, if necessary, the key field.  The other three functions, which might
% look at two fields and the key field, are similar, except that the key field
% takes precedence over the organization field (for labels---not for sorting).
%
% The calc.label function calculates the preliminary label of an entry, which
% is formed by taking three letters of information from the author or editor or
% key or organization field (depending on the entry type and on what's empty,
% but ignoring a leading "The " in the organization), and appending the last
% two characters (digits) of the year. It is an error if the appropriate fields
% among author, editor, organization, and key are missing, and we use
% the first three letters of the cite$ in desperation when this happens.
% The resulting label has the year part, but not the name part, purify$ed
% (purify$ing the year allows some sorting shenanigans by the user).
%
% This function also calculates the version of the label to be used in sorting.
%
% The final label may need a trailing 'a', 'b', etc., to distinguish it from
% otherwise identical labels, but we can't calculated those "extra.label"s
% until after sorting.
%
% calc.label ==
%  BEGIN
%       if type$ = "book" or "inbook" then
%           author.editor.key.label
%       else if type$ = "proceedings" then
%           editor.key.organization.label
%       else if type$ = "manual" then
%           author.key.organization.label
%       else
%           author.key.label
%       fi fi fi
%       label := label * substring$(purify$(field.or.null(year)), -1, 2)
%               % assuming we will also sort, we calculate a sort.label
%       sort.label := sortify(label), but use the last four, not two, digits
%  END

FUNCTION {format.lab.names}
{ 's :=
  "" 't :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ duplicate$
  #2 >
    { pop$
      " " * bbl.etal *
    }
    { #2 <
        'skip$
        { s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            {
              " " * bbl.etal *
            }
            { bbl.and space.word * s #2 "{vv~}{ll}" format.name$
              * }
          if$
        }
      if$
    }
  if$
}

FUNCTION {author.key.label}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {author.editor.key.label}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor format.lab.names }
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {editor.key.label}
{ editor empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { editor format.lab.names }
  if$
}

FUNCTION {calc.short.authors}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label
    { type$ "proceedings" =
        'editor.key.label
        'author.key.label
      if$
    }
  if$
  'short.list :=
}

FUNCTION {calc.label}
{ calc.short.authors
  short.list
  "("
  *
  year duplicate$ empty$
     { pop$ "????" }
     'skip$
  if$
  *
  'label :=
}

% When sorting, we compute the sortkey by executing "presort" on each entry.
% The presort key contains a number of "sortify"ed strings, concatenated
% with multiple blanks between them.  This makes things like "brinch  per"
% come before "brinch hansen  per".
%
% The fields used here are: the sort.label for alphabetic labels (as set by
% calc.label), followed by the author names (or editor names or organization
% (with a leading "The " removed) or key field, depending on entry type and on
% what's empty), followed by year, followed by the first bit of the title
% (chopping off a leading "The ", "A ", or "An ").
% Names are formatted: Von Last First Junior.
% The names within a part will be separated by a single blank
% (such as "brinch hansen"), two will separate the name parts themselves
% (except the von and last), three will separate the names,
% four will separate the names from year (and from label, if alphabetic),
% and four will separate year from title.
%
% The sort.format.names function takes an argument that should be in
% BibTeX name format, and returns a string containing "   "-separated
% names in the format described above.  The function is almost the same
% as format.names.

FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{ll{ }}{  ff{ }}{  jj{ }}"
      format.name$ 't :=
      nameptr #1 >
        {
          "   "  *
          namesleft #1 = t "others" = and
            { "zzzzz" * }
            { t sortify * }
          if$
        }
        { t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

% The sort.format.title function returns the argument,
% but first any leading "A "'s, "An "'s, or "The "'s are removed.
% The chop.word function uses s, so we need another string variable, t

FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}

% The auxiliary functions here, for the presort function, are analogous to
% the ones for calc.label; the same comments apply, except that the
% organization field takes precedence here over the key field.  For sorting
% purposes, we still remove a leading "The " from the organization field.

FUNCTION {author.sort}
{ author empty$
    { key empty$
        { "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
        { key empty$
            { "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {editor.sort}
{ editor empty$
    { key empty$
        { "to sort, need editor or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { editor sort.format.names }
  if$
}

% There is a limit, entry.max$, on the length of an entry string variable
% (which is what its sort.key$ is), so we take at most that many characters
% of the constructed key, and hope there aren't many references that match
% to that many characters!

FUNCTION {presort}
{ calc.label
  label sortify
  "    "
  *
  type$ "book" =
  type$ "inbook" =
  or
    'author.editor.sort
    { type$ "proceedings" =
        'editor.sort
        'author.sort
      if$
    }
  if$
  #1 entry.max$ substring$
  'sort.label :=
  sort.label
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

ITERATE {presort}

% And now we can sort

SORT

% This long comment applies only to alphabetic labels, when sorted
%
% Now comes the final computation for alphabetic labels, putting in the 'a's
% and 'b's and so forth if required.  This involves two passes: a forward
% pass to put in the 'b's, 'c's and so on, and a backwards pass
% to put in the 'a's (we don't want to put in 'a's unless we know there
% are 'b's).
% We have to keep track of the longest (in width$ terms) label, for use
% by the "thebibliography" environment.
%
% VAR: longest.label, last.sort.label, next.extra: string
%      longest.label.width, last.extra.num: integer
%
% initialize.longest.label ==
%  BEGIN
%       longest.label := ""
%       last.sort.label := int.to.chr$(0)
%       next.extra := ""
%       longest.label.width := 0
%       last.extra.num := 0
%  END
%
% forward.pass ==
%  BEGIN
%       if last.sort.label = sort.label then
%           last.extra.num := last.extra.num + 1
%           extra.label := int.to.chr$(last.extra.num)
%       else
%           last.extra.num := chr.to.int$("a")
%           extra.label := ""
%           last.sort.label := sort.label
%       fi
%  END
%
% reverse.pass ==
%  BEGIN
%       if next.extra = "b" then
%           extra.label := "a"
%       fi
%       label := label * extra.label
%       if width$(label) > longest.label.width then
%           longest.label := label
%           longest.label.width := width$(label)
%       fi
%       next.extra := extra.label
%  END

STRINGS { last.label next.extra }

INTEGERS { last.extra.num number.label }

FUNCTION {initialize.extra.label.stuff}
{ #0 int.to.chr$ 'last.label :=
  "" 'next.extra :=
  #0 'last.extra.num :=
  #0 'number.label :=
}

FUNCTION {forward.pass}
{ last.label label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
  number.label #1 + 'number.label :=
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label 'next.extra :=
  extra.label
  duplicate$ empty$
    'skip$
    { "{\natexlab{" swap$ * "}}" * }
  if$
  'extra.label :=
  label extra.label * 'label :=
}

EXECUTE {initialize.extra.label.stuff}

ITERATE {forward.pass}

REVERSE {reverse.pass}

FUNCTION {bib.sort.order}
{ sort.label
  "    "
  *
  year field.or.null sortify
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

ITERATE {bib.sort.order}

%%%%%%%%
%: Output the Built Bibliography
%%%%%%%%

% Now we're ready to start writing the .BBL file.
% We begin, if necessary, with a LaTeX macro for unnamed names in an alphabetic
% label; next comes stuff from the `preamble' command in the database files.
% Then we give an incantation containing the command
%     \begin{thebibliography}{...}
% where the `...' is the longest label.
%
% We also call init.state.consts, for use by the output routines.

FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{" number.label int.to.str$ * "}" *
  write$ newline$
}

EXECUTE {begin.bib}

EXECUTE {init.state.consts}
EXECUTE {init.urlbst.variables} % urlbst

% Now we produce the output for all the entries

ITERATE {call.type$}

% Finally, we finish up by writing the `\end{thebibliography}' command.

FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}

EXECUTE {end.bib}

% End of file `jt-z39-29.bst'.
