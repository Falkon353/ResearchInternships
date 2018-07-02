% ============================================
% MST_Latex2e_style.cls, Latex Stil Klasse
% ============================================
% LaTeX Style file f?r des Lehrstuhl f?r Messsystem- und Sensortechnik
% f?r wissenschaftliche Arbeiten.
%
% ============================================
% Selbstidentifikation
% ============================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MST_Latex2e_style}[2010/02/25]
% ============================================
% Bildschirmmeldung
% ============================================
\typeout{Document Class `MST_Latex2e_style' v1.1 <30 September 09>}
\typeout{(c) by Lehrstuhl fuer Messsystem- und Sensortechnik, TU-Muenchen}
%
\RequirePackage[latin1]{inputenc}% Deutsche Tastatur
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}        % Grafikeinbindung
\RequirePackage{epsfig}          % Verwendung von eps Grafiken
\RequirePackage{makeidx}         % automitisierte Indexerstellung
\RequirePackage{color}           % Verwendung von Farben
\RequirePackage{supertabular}    % Mehrseitige Tabellen
\RequirePackage{rotating}        % Drehung von Objekten, Sidewaystable
\RequirePackage{float}           % Fixierung von Fliessumgebungen
\RequirePackage{textcase}        % Textformatierung, z.B. Transformieren
%\RequirePackage[ngerman]{babel}   % Silbentrennung nach neuer deutsche Rechtschreibung
\pdfminorversion=6							 % Zur Unterstuezung der pdf-version 1.6
%
%
\newif\if@restonecol
\newif\if@bt
\newif\if@en
\newif\if@pdf
%
%
% ============================================
% OPTIONEN
% ============================================
% Einseitig/ Zweiseitig
% Standard ist einseitiger Druck
% ============================================
\DeclareOption{oneside}{\@twosidefalse
            \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue    % Zweitseitiger Druck
            \@mparswitchtrue}            % Vertauschung der Randeinstellungen
%
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
%
\DeclareOption{draft}{\setlength\overfullrule{5pt}} %overfullrule bestimmt die Breite der Fehlermarkierung bei Rand?berschreitungen an.
\DeclareOption{final}{\setlength\overfullrule{0pt}}
%
\DeclareOption{fleqn}{\input{fleqn.clo}}    % Linksb?ndige Anordnung von Formeln anstelle der rechtsb?ndigen Anordnung
%
\DeclareOption{flbt}{\@bttrue}  %Flushbottom
\DeclareOption{rgbt}{\@btfalse} %Raggedbottom
%
\DeclareOption{de}{\@enfalse}    %Deutsch
\DeclareOption{en}{\@entrue}   %Englisch
%
\DeclareOption{nonpdf}{\@pdffalse}    %Standard Latex
\DeclareOption{pdf}{\@pdftrue}   %PDF Latex
%
\ExecuteOptions{oneside,onecolumn,final,rgbt,de,pdf}
\ProcessOptions\relax
%
%
% ============================================
% Steuergr??en Englisch/ Deutsch
% ============================================
\if@en%
\newcommand\contentsname{Table of Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
%\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
\else
    \RequirePackage[latin1]{inputenc}	% Deutsche Tastatur
    \RequirePackage[ngerman]{babel}   % Silbentrennung nach neuer deutsche Rechtschreibung
    \RequirePackage{ngerman}%         % Deutsche Schreibweisen
    \renewcommand\contentsname{Inhaltsverzeichnis}
    %\renewcommand\contentsname{INHALTSVERZEICHNIS}
    \renewcommand\listfigurename{Abbildungsverzeichnis}
    %\renewcommand\listfigurename{ABBILDUNGSVERZEICHNIS}
    \renewcommand\listtablename{Tabellenverzeichnis}
    %\renewcommand\listtablename{TABELLENVERZEICHNIS}
    \renewcommand\bibname{Quellennachweis}
    %\renewcommand\bibname{LITERATURVERZEICHNIS}
\fi
%
%
% ============================================
% Festlegen der Papierart/-gr??e
% ============================================
\setlength\unitlength{1mm}
\setlength\paperheight{297mm}
\setlength\paperwidth{210mm}
%
%
% ============================================
% Festlegen der Schriftart/-gr??e
% und Zeilenabst?nde
% ============================================
\setlength\lineskip{1pt}               % Mindestabstand zwischen Unter-/Oberkante
                            % zweier Zeilen, falls lineskiplimit (standard 0pt) nicht erf?llt
\setlength\normallineskip{1pt}         % Definition des Standardabstands zw. zwei Zeilen Unter-/Oberkante;
                            % wird beim R?cksetzen ben?tigt.
\renewcommand\baselinestretch{1.5}   % Definiert einen Faktor, der mit dem Zeilenabstand (baselineskip 
                            % standard 1 fach) aufmultipliziert wird = effektiver Zeilenabstand.
%           
%                 
% ZEILENABST?NDE 1fach/1.5fach umschalten
% Ben?tigt z.B. f?r Abstract und quotas
\newcommand{\Abstandeinfach}
  {\renewcommand{\baselinestretch}{1.0}}
\newcommand{\Abstandeinhalbfach}
  {\renewcommand{\baselinestretch}{1.5}}
%
%
% Befehlserkl?rung:
% renewcommand              = Neuerkl?rung eines existierenden Befehls
% newcommand                = Neuerkl?rung eines Benutzerbefehls
% normalsize                = Standardschriftgr??e
% fontsize{gr??e}{z_abst}   = Auswahlbefehl f?r Schriftgr??e
% selectfont                = Aktivierungsbefehl eines Zeichensatzes
%
% Im Folgenden DEFINIERTE SCHRIFTARTEN:
% normalsize, small, footnotesize, scriptsize, tiny, large, Large, LARGE, huge = Huge
% 12        , 11   , 10          , 8         , 6   , 14   , 18   , 20   , 22
%
% NORMALSIZE
\renewcommand{\normalsize}{\fontsize{12\p@}{12\p@}\selectfont
\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@%            % Formelabsatz lange Formel oben
\belowdisplayskip \abovedisplayskip                 % und unten
\abovedisplayshortskip  \z@ \@plus3\p@%                % Formelabsatz kurze Formel oben
\belowdisplayshortskip  6.5\p@ \@plus3.5\p@ \@minus3\p@    % und unten
                                                    % lang und kurz bieht sich auf bestehende ?berlappung
                                                    % mit dem Ende des vorangehenden Satzes.
                                                    % Werte: Sollwert Plusdehnwert Minusstauchwert
\def\@listi{\parsep 4.5\p@ \@plus2\p@ \@minus1\p@        % Abstand zweier Abs?tze in Listumgebung
            \itemsep \parsep                        % Zus?tzlicher Abstand zu parsep f?r Aufz?hlung
            \topsep 9\p@ \@plus3\p@ \@minus5\p@}}        % Zus?tzlicher Abstand zu parsep zu Beginn und Ende
                                                    % von einer listen?hnlichen Umgebung und bei
                                                    % linksb?ndigen Formeln wenn fleqn gesetzt ist.                                                    

                                                    
\newcommand{\standard}{\normalsize}
%
% SMALL
\newcommand{\small}{\fontsize{11pt}{11pt}\selectfont
\abovedisplayskip 11pt plus3pt minus6pt%
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  0pt plus3pt%
\belowdisplayshortskip  6.5pt plus3.5pt minus3pt
\def\@listi{\parsep 4.5pt plus 2pt minus 1pt        % Abstand zweier Abs?tze in Listumgebung
            \itemsep \parsep                        % Zus?tzlicher Abstand zu parsep f?r Aufz?hlung
            \topsep 9pt plus 3pt minus 5pt}}        % Zus?tzlicher Abstand zu parsep zu Beginn und Ende
                                                    % von einer listen?hnlichen Umgebung und bei
                                                    % linksb?ndigen Formeln wenn fleqn gesetzt ist.
%
% FOOTNOTESIZE
\newcommand{\footnotesize}{\fontsize{10pt}{10pt}\selectfont
\abovedisplayskip 10pt plus2pt minus5pt%
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  0pt plus3pt%
\belowdisplayshortskip  6pt plus3pt minus3pt
\def\@listi{\parsep 3pt plus 2pt minus 1pt
            \itemsep \parsep}
            \topsep 6pt plus 2pt minus 2pt}
%
% SCRIPTSIZE
\newcommand{\scriptsize}{\fontsize{8pt}{8pt}\selectfont}
%
% TINY, etc.
\newcommand{\tiny}{\fontsize{6pt}{7pt}\selectfont}
\newcommand{\large}{\fontsize{14pt}{18pt}\selectfont}
\newcommand{\Large}{\fontsize{17pt}{22pt}\selectfont}
\newcommand{\LARGE}{\fontsize{21pt}{25pt}\selectfont}
\newcommand{\huge}{\fontsize{25pt}{30pt}\selectfont}
\let\Huge=\huge
%
%
\normalsize  % Auswahl Standard-Schriftart
%
%
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\maxdepth{.5\topskip}
%
%=============================================================================
%  DEFINITION DER SCHRIFTEN entsprechend bekannten Latexstandards
%=============================================================================
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
%
%
%
% ============================================
% R?NDER
% Wichtig: Automatischer 1 inch (2.54cm) Rand
% ============================================
% Seitenr?nder
% ============================================
\setlength\voffset{0mm}         % oberer Bezugsrand - Druckeroffset vertikal
\setlength\hoffset{0mm}         % seitlicher Bezugsrand links - Druckeroffset horizontal
%
%
\if@twoside                     % Zweitseitiger Druck ausgew?hlt
  \setlength\oddsidemargin{5.2mm}     % linker Rand f?r ungerade Seitennummern
  \setlength\evensidemargin{0.6mm}    % linker Rand f?r gerade Seitennummern
  \setlength\marginparwidth{20mm}   % Breite Randnotizen
  %
\else                           % einseitiger Druck
  \setlength\oddsidemargin{5.2mm}  
  \setlength\evensidemargin{0.6mm}
  \setlength\marginparwidth{20mm}
\fi
\setlength{\marginparsep}{2.4mm}   % Minimaler Abstand zwischen Randnotizen und Text
\setlength{\marginparpush}{7pt}  % Minimaler Abstand zwischen Randnotizen
% ============================================
% Kopf/Fuss der Seite
% ============================================
% Verwendung von bp (bigpoints)
%
%                              % Kopf:
\setlength\topmargin{-10mm}%{0}   %    Oberer Seitenrand bis Oberkante Kopfzeile.
                                  %    (Bezogen auf automatischen Rand)
\setlength\headheight{12bp}       %    H?he Kopfzeilenbox
\setlength\headsep{24bp}          %    Abstand von Kopfzeile zu laufendem Text
\setlength\topskip{12bp}          %    Unterkante erster Zeile zu Oberkante Textbereich.
                              % Fuss:
\setlength\footskip{30bp}%{60bp}  %    Unterkante Fusszeile bis Unterkante Basislinie Text
%
\newlength{\majorheadskip}      %
\setlength{\majorheadskip}{1.6cm}%{2.6} % vertikaler Abstand von gr??eren ?berschriften (bsp. Kapitel)
%
%
%
% ============================================
% Abmessungen Textbereich
% ============================================
\setlength{\textwidth}{160mm}%{154mm}      % Breite Textbereich
\setlength{\textheight}{250mm}%{215mm}     % H?he Textbereich (incl. fussnoten, gleitumgebungen;
                                   % excl. Fusszeile und Kopfzeile).               
%
%
% ============================================
% Zweispaltiger Text
% ============================================
\setlength\columnsep{5mm}          %    Abstand zwischen den Spalten
\setlength\columnseprule{0pt}      %    Dicke Trennlinie
%
%
% ============================================
% Fussnoten
% ============================================
\setlength{\footnotesep}{8.4pt}    % Kein extra Abstand zwischen Fussnoten
\skip\footins 10.8 pt plus 4pt minus 2pt  % Abstand von letzter Zeile zur Oberkante
                                          % der ersten Fussnote
                                          % Werte ?bernommen aus Referenz
%
%
% ============================================
% ABS?TZE
% ============================================
\setlength{\parskip}{0\p@ \@plus \p@} % elastischer extra Abstand zwischen zwei Abs?tzen
\setlength{\parindent}{10pt}        % Einr?cktiefe der ersten Zeile eines Absatzes
\setlength{\topsep}{10pt plus 4pt minus 6pt} % Extra Zwischenraum zus?tzlich zu \parsep
                                   % vor und nach Listenartigen Umgebungen und abgsetzten
                                   % Formeln wenn fleqn.
\setlength\partopsep{3pt plus 2pt minus 2pt}  % Zusatzzwischenraum vor/ nach Listen falls
                                   % eine Leerzeile vorangeht/folgt.
\setlength\itemsep{5pt plus 2.5pt minus 1pt}  % Zusatzabstand f?r Listenmarkierungen zum 
                                              % vorangehenden Text.
%
%
%
% ============================================
% UMBR?CHE
% ============================================
\@lowpenalty   51      % Produced by \nopagebreak[1] or \nolinebreak[1]
\@medpenalty  151      % Produced by \nopagebreak[2] or \nolinebreak[2]
\@highpenalty 301      % Produced by \nopagebreak[3] or \nolinebreak[3]

\@beginparpenalty -\@lowpenalty    % Before a list or paragraph environment.
\@endparpenalty   -\@lowpenalty    % After a list or paragraph environment.
\@itempenalty     -\@lowpenalty    % Between list items.
%=============================================================================
%\displaywidowpenalty % Math display widow line.
% \predisplaypenalty   % Breaking before a math display.
% \postdisplaypenalty  % Breaking after a math display.
%\interlinepenalty    % Breaking at a line within a paragraph.
%=============================================================================
%
%
%
% ============================================
% EINSTELLUNGEN F?R GLEITOBJEKTE (z.B: Tabelle/ Graphik)
% IM TEXT
% ============================================
\setlength{\floatsep}{14pt plus 2pt minus 4pt}  % vert. Abstand zw. zwei Gleitobjekten
                                                % die auf einer Seite oben oder unten erscheinen
\setlength{\textfloatsep}{20pt plus 2pt minus 4pt} % vertikaler Abstand ziwschen einem Gleitobjekt
                                                   % oben auf der Seite und dem nachfolgenden Text
\setlength{\intextsep}{14pt plus 4pt minus 4pt} % vertikaler Abstand zwischen Gleitobjekten und
                                                % laufendem Text.
%
% NUR F?R DEN ZWEISPALTIGEN MODUS
\setlength{\dblfloatsep}{14pt plus 2pt minus 4pt}     % Abstand zweier Gleitobjekte, die ?ber
                                                      % beide Spalten reichen.
\setlength{\dbltextfloatsep}{20pt plus 2pt minus 4pt} % Abstand Text zu Gleitobjekt
%
%
% ============================================
% EIGENE SEITE F?R GLEITOBJEKTE
% ============================================
\setlength\@fptop{0pt plus 1fil}  % Einf?gung vert. veriabler Zwischenraum am Seitenkopf
\setlength\@fpsep{10pt plus 2fil} % Abstand zwischen den Umgebungen
\setlength\@fpbot{0pt plus 1fil}  % Einf?gung vert. veriabler Zwischenraum am Seitenende
%
% NUR F?R DEN ZWEISPALTIGEN MODUS
\setlength\@dblfptop{0pt plus 1fil}
\setlength\@dblfpsep{10pt plus 2fil}
\setlength\@dblfpbot{0pt plus 1fil}
%
%
%=============================================================================
% WEITERE MASSANGABEN
%=============================================================================
\def\@tocchapterskip{1.0em plus 1pt}
%
%
%=============================================================================
% SEITEN STILE
%=============================================================================
% Definition des Seitenstiles <Stil> durch \ps@<Stil>.
% Die Angabe von Abst?nden, au?erhalb des Kontextes sind zu vermeiden.
%
% Mit \ps@... wird wieterhin definiert:
% Makros: \@oddhead, \@oddfoot, \@evenhead, \@evenfoot 
% \@oddhead is the macro to produce the contents of the
% heading box for odd-numbered pages.  It is called inside an \hbox of
% width \textwidth.
%
% Mit \chaptermark, \sectionmark, ... , wobei \chaptermark{TEXT} 
% von \chapter verwendet wird, werden die Kopfeintr?ge vorgenommen.
%
% Hinweise:
% LaTeX extends TeX's \mark facility by producing two kinds of marks
% a 'left' and a 'right' mark, using the following commands:
%     \markboth{LEFT}{RIGHT} : Adds both marks.
%     \markright{RIGHT}      : Adds a 'right' mark.
%     \leftmark  : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'left'  mark.  Works like TeX's
%                  \botmark command.
%     \rightmark : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'right'  mark.  Works like TeX's
%                  \firstmark command.
% The marking commands work reasonably well for right marks 'numbered
% within' left marks--e.g., the left mark is changed by a \chapter command and
% the right mark is changed by a \section command.  However, it does
% produce somewhat anomalous results if two \bothmark's occur on the same page.
%=============================================================================
%
\def\chaptermark#1{}
\mark{{}{}}   % Initialisierung der Markierungen (wirkt wie ein Reset)
%
%
%
%=============================================================================
% Der "headings" Stile (siehe Latex Standard Book Klasse)
% ##1 Parameter von \def\chaptermark innerhalb von \def\ps@headings.
%=============================================================================
\if@twoside
  \def\ps@headings{  
    \def\@oddfoot{\hfil \rm \thepage}
    \def\@evenfoot{\rm \thepage \hfil}
    \def\@evenhead{%
        \setlength{\@tempdima}{\textwidth}\hss\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{\strut\lefttmark\hfil}%
        \ifnum \c@secnumdepth > \m@ne
            \vskip 1.5\p@ \hrule
        \fi }}}
    \def\@oddhead{%
        \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
        \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
        \fi
        }}\hss}
%
    \def\chaptermark##1{\markboth {\ifnum \c@secnumdepth >\m@ne \thechapter \ -- \ \fi ##1}{}}%
    \def\sectionmark##1{\markright {\ifnum \c@secnumdepth >\z@ \thesection \ -- \ \fi ##1}}%
    }
      %
      % \Uppercase  GRO?BUCHSTABEN
      % \ifnum     Zahlenvergleich
      % 
\else                                                        
  \def\ps@headings{
    \def\@oddfoot{\hfil \rm \thepage}
    \def\@oddhead{%
        \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
        \ifnum \c@secnumdepth > \m@ne
            \vskip 1.5\p@ \hrule
        \fi
        }}\hss}
    \def\chaptermark##1{\markright{\ifnum \c@secnumdepth > \m@ne \thechapter \ -- \ \fi ##1}}}
\fi
%
%
%
%=============================================================================
% Der "firstchapterpage" Stile (siehe Latex Standard Book Klasse)
%=============================================================================
\if@twoside
  \def\ps@firstchapterpage{  
    \def\@oddfoot{\hfil \rm \thepage}
    \def\@evenfoot{\rm \thepage \hfil}
    \def\@evenhead{%
        \hrulefill%
    }%
    %
    \def\@oddhead{%
        \hrulefill%
    }%

  }
\else                                                        
  \def\ps@firstchapterpage{
    \def\@oddfoot{\hfil \rm \thepage}
    \def\@oddhead{%
        \hrulefill
        }
    }
\fi
%
%=============================================================================
% Titelseite einrichten
%=============================================================================
\newcommand{\Master}{
\if@en
	\gdef\@doctyp{Master's Thesis}
\else
	\gdef\@doctyp{Masterarbeit}
\fi	
}
\newcommand{\Bachelor}{
\if@en
    \gdef\@doctyp{Bachelor's Thesis}
\else
    \gdef\@doctyp{Bachelorarbeit}
\fi
}
\newcommand{\Diplom}{
\if@en
    \gdef\@doctyp{Diploma Thesis}
\else
    \gdef\@doctyp{Diplomarbeit}
\fi
}

\newcommand{\Stud}{
\if@en
    \gdef\@doctyp{Student research}
\else	
	\gdef\@doctyp{Studienarbeit}
\fi
}

\newcommand{\Ppra}{
\if@en
	\gdef\@doctyp{Project Practical}
\else
    \gdef\@doctyp{Projektpraktikum}
\fi
}

\newcommand{\Hsem}{
\if@en
	\gdef\@doctyp{Advanced Seminar}
\else
    \gdef\@doctyp{Hauptseminar}
\fi
}

\newcommand{\Forpraxis}{
\if@en
	\gdef\@doctyp{Research Practice}
\else
    \gdef\@doctyp{Forschungspraxis}
\fi
}

\newcommand{\Ingpraxis}{
\if@en
	\gdef\@doctyp{Engineer Practice}
\else
    \gdef\@doctyp{Ingenieurspraxis}
\fi
}

\def\Betreuer#1{\gdef\@Betreuer{#1}}
\def\thanks#1{\typeout{Warnung: Thanks-Befehl wurde entfernt. Nutzen Sie eine andere Umgebung.}}
%
\newcommand\maketitle {%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}% 
    
%    \let\footnotesize\small%
%    \let\footnoterule\relax%

    \begin{figure}[t]
        \begin{center}
        \if@pdf
            \includegraphics[width=\textwidth]{MST_files/Kopf_MST.pdf}
        \else
            \includegraphics[width=\textwidth]{MST_files/Kopf_MST.eps}
        \fi
        \end{center}
    \end{figure}



    \vspace*{1.5cm}
    \begin{center}
        \Abstandeinfach
        %\setlength\spaceskip{1.5em} Hat nur auswirkung auf die Abst?nde von Leerzeichen
        {\sf \large \emph \@doctyp \par}
        \vspace{2cm}
	\scalebox{.9}[.9]{
	\begin{minipage}[c][4cm][t]{1.0\textwidth}
	\centering
	{\LARGE \textsf{ \@title} \par}
	\end{minipage}}
        \vspace{1.5cm}
        {\sf \large\scalebox{.9}[.9]{ \@author} \par}
        \vspace{2cm}
        {\sf \large\scalebox{.9}[.9]{ \@date} \par}
        \vspace{3.5cm}
        {{ 
        \if@en
             {\sf \large \scalebox{.9}[.95]{Supervisor:}\par}
        \else
            {\sf \large \scalebox{.9}[.9]{Betreuer:} \par}
        \fi}
	 \vspace{-1mm}
         {\sf \large \scalebox{.9}[.9]{ \@Betreuer}}}
    \end{center}
    \setcounter{page}{1}%
    \setcounter{footnote}{0}%
    %
    \let\thanks\relax
    \let\maketitle\relax
    \let\Bachelor\relax
    \let\Diplom\relax
    %
%
\global\let\@doctyp\@empty
\global\let\@Betreuer\@empty
\global\let\@thanks\@empty
\if@twoside
    \newpage
    \thispagestyle{empty}
    \cleardoublepage
\else
    \clearpage
\fi
\if@restonecol
        \twocolumn 
\fi
\setcounter{page}{1}
}
%
%
%=============================================================================
% Titelseiten Umgebung definieren
%=============================================================================
%
%
%
% ===================================================
% Z?hler
% ===================================================
\setcounter{secnumdepth}{3}          %Darstellungstiefe im Inhaltsverzeichnis
\setcounter{footnote}{0}%
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
%
\def\thepart{\@Roman\c@part}
\def\thechapter       {\arabic{chapter}}
\def\thesection       {\thechapter.\arabic{section}}
\def\thesubsection    {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection.\arabic{subsubsection}}
\def\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
%
\newcommand\@chapapp{\chaptername}
%
%
%
% ===================================================
% Darstellung eines neuen Abschnittes: PART
% ===================================================
\newcommand\part{%
    \cleardoublepage%
    \if@twocolumn
        \onecolumn
        \@tempswatrue
    \else
        \@tempswafalse
    \fi
    \null\vfil
    \@part
    \secdef\@part\@spart
}
%
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bf \partname \ \thepart
       \par
       \vskip 20\p@
     \fi
    \Huge \bfseries #2\par%
    }%
    \@endpart
  }
%
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
%
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}

%
% ===================================================
% Darstellung eines neuen Kapitels
% ===================================================
% Definition des reinen Kommandos
%
\newcommand\chapter{%
\clearpage%
\thispagestyle{firstchapterpage}
\global\@topnum\z@%     Verhindert das Aufsteigen von Bildern an den Seitenbeginn
\@afterindentfalse%     unterdr?ckt h?ngenden Einzug
\secdef\@chapter\@schapter%
}
%
% Kapitelz?hler und Eintr?ge in Verzeichnisse steuern
% ?berschrift ausgeben
%
\def\@chapter[#1]#2{%
\ifnum \c@secnumdepth >\m@ne%      Gliederungsebene feststellen \m@ne ist -1 Ebene part
    \refstepcounter{chapter}%          Kapitelz?hler erh?hen
    \typeout{\chaptername \ \space\thechapter. #1}%
    \addcontentsline{toc}{chapter}
    {\protect\numberline{\thechapter}#1}% Protect sch?tzt vor dem zerbrechen des Befehls
\else
    \addcontentsline{toc}{chapter}{#1}
\fi
\chaptermark{#1}%

\addtocontents{lof}{\protect\addvspace{10\p@}}% Leerzeile einf?gen in lof datei
\addtocontents{lot}{\protect\addvspace{10\p@}}%
\if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
\else
    \@makechapterhead{#2}%
    \@afterheading
\fi
}
%
% ============================================
% \@makechapterhead {TEXT} : ?berschrift f?r \chapter Befehl festlegen.
% ============================================
\def\@makechapterhead#1{%
\vspace*{\majorheadskip}%       Abstand vom Seitenkopf
    { \parindent 0pt%               Kein Einzug
      \topsep 0pt%
      \parskip 0pt%
      \Abstandeinfach\Large\bf
      \raggedright
      \ifnum \c@secnumdepth >\m@ne
        \@chapapp \space \thechapter
      \fi
      \vskip 20pt
      \interlinepenalty\@M
      #1 \par \nobreak
      \vskip 20mm
    }
}
% ===================================================
% Darstellung eines neuen Kapitels ohne Nummerierung
% ===================================================
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
%
\def\@makeschapterhead#1{%
  \vspace*{\majorheadskip}%
  {\parindent 0pt%               Kein Einzug
      \topsep 0pt%
      \parskip 0pt%
      \Abstandeinfach\Large\bf
      \raggedright
    \interlinepenalty\@M
    #1 \par \nobreak
    \vskip 20mm
  }
}
% ===================================================
% Unterkapitel
% ===================================================
% Die folgenden Einstellungen f?r die Unterkapitel wurden den
% Klassen book und withesis entnommen
\def\section{%
    \ifnum \c@section = 0% Beim ersten Unterkapitel vertikalen Abstand im Inhaltsverz. einf?gen
        \addtocontents{toc}{
        {\protect
        \ifnum \protect\value{tocdepth} > 0
            {\vskip\@tocchapterskip} \protect
        \fi}}
    \fi
    \@startsection {section}{1}{\z@}%
                    {-5.5ex \@plus -1ex \@minus -.2ex}%  % Absatz zu vorhergehendem Text
                    {2.3ex \@plus .2ex}%                 % Absatz zu nachfolgendem Text
                    {\Abstandeinfach\large\bf}
}
%  
\def\subsection{\@startsection{subsection}{2}{\z@}%
                    {-4ex plus -1ex minus -.2ex}
                    {1.5ex plus .2ex}
                    {\Abstandeinfach\large\bf}
}
%  
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                    {-4ex plus -1ex minus -.2ex}
                    {1.5ex plus .2ex}
                    {\Abstandeinfach\large\bf}
}
%  
\def\paragraph{\@startsection{paragraph}{4}{\z@}%
                    {-4ex plus -1ex minus -.2ex}
                    {1.2ex plus .2ex}
                    {\Abstandeinfach\bf}
}
%
\def\subparagraph{\@startsection{subparagraph}{5}{\parindent}%{1em}%
                    {-4ex plus -1ex minus -.2ex}
                    {1.2ex plus .2ex}
                    {\Abstandeinfach\bf}
}
%
% ===================================================
% Listenumgebungen
% ===================================================
% EINR?CKTIEFEN
\setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
%
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
%
%
% ABSTAND/ GR?SSE MARKE
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\parsep{5pt plus 2.5pt minus 1pt}
%
%
% Z?HLERDARSTELLUNG
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
%
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
%
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
%
\newcommand\labelitemi{$\bullet$}
\newcommand\labelitemii{\bfseries --}
\newcommand\labelitemiii{$\ast$}
\newcommand\labelitemiv{$\cdot$}
%
\def\@listi{\leftmargin\leftmargini}
%
\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii\advance\labelwidth-\labelsep
  \topsep 5pt plus 2.5pt minus 1pt
  \parsep 2.5pt plus 1pt minus 1pt
  \itemsep \parsep}
%
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
  \topsep 2.5pt plus 1pt minus 1pt
  \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
  \itemsep \topsep}
%
\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
%
\def\@listv{\leftmargin\leftmarginv
  \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
%
\def\@listvi{\leftmargin\leftmarginvi
  \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}
%
%
%=============================================================================
% UMGEBUNGEN => BOOK
%=============================================================================
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
\newenvironment{verse}
               {\let\\ \@centercr%
                \list{}{\itemsep \z@%
                        \itemindent -1.5em%
                        \listparindent\itemindent%
                        \rightmargin \leftmargin%
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
%
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
%
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
%
%
%=============================================================================
% ARRAY AND TABULAR
%=============================================================================
\setlength\arraycolsep{5\p@}    % Half the space between columns in an array environment.
\setlength\tabcolsep{6\p@}      % Half the space between columns in a tabular environment.
\setlength\arrayrulewidth{.4\p@}% Width of rules in array and tabular environment.
\setlength\doublerulesep{2\p@}  % Space between adjacent rules in array or tabular env.
%
%=============================================================================
% TABBING
%=============================================================================
\setlength\tabbingsep{\labelsep}  % Space used by the \' command.  (See LaTeX manual.)
%
%=============================================================================
% MINIPAGE
%  \@minipagerestore is called upon entry to a minipage environment to
%  set up things that are to be handled differently inside a minipage
%  environment. In the current styles, it does nothing.
%
% \skip\@mpfootins : plays same role for footnotes in a minipage as
%                    \skip\footins does for ordinary footnotes
%=============================================================================
\skip\@mpfootins = \skip\footins
%
%=============================================================================
% FRAMEBOX
%=============================================================================
\setlength\fboxsep{3\p@}    % Space left between box and text by \fbox and \framebox.
\setlength\fboxrule{.4\p@}  % Width of rules in box made by \fbox and \framebox.
%
%=============================================================================
% FORMELNUMMERIERUNG
%=============================================================================
\@addtoreset{equation}{chapter}
\def\theequation{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
%=============================================================================
% The macro \@eqnnum defines how equation numbers are to appear in equations.
%=============================================================================
\def\@eqnnum{(\theequation)}
%
%
%=============================================================================
% ANHANG
%=============================================================================
\def\appendix{%
    \cleardoublepage%
    \markboth{}{}%
    \vspace*{5 cm}%
    \begin{center}%
    \Large\bf{
    \if@en
        APPENDIX
    \else
        ANHANG
    \fi
    }%
    \end{center}%
    %
    \cleardoublepage
    \par
    \addtocontents{toc}{{\protect\setcounter{tocdepth}{0}}}
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \def\@chapapp{\appendixname}
    \gdef\thechapter{\@Alph{\c@chapter}}
    %
    \def\chaptername##1{##1}
    \relax
    \addtocontents{toc}{
%        \protect\addvspace{\@tocchapterskip}
        \protect\addvspace{30\p@}
        \hbox to \hsize{\bf 
        \if@en
            APPENDIX
        \else
            ANHANG
        \fi \hfil}
        \protect\addvspace{\@tocchapterskip}}
}

\def\l@appendix#1#2{\pagebreak[3]
  \vskip\@tocchapterskip % space above chapter line
%  \@dottedtocline{0}{0pt}{7.3em}{{\bface #1}}{#2}}
  \@dottedtocline{0}{1.5em}{6.5em}{{\bface #1}}{#2}}


%\def\noappendixtables{\def\@lotheading{}}
%\def\noappendixfigures{\def\@lofheading{}}
%\def\@lotheading{
%  \addtocontents{lot}{
%    \protect\stepcounter{listofheading}
%    \protect\addvspace{\@tocchapterskip}
%    \hbox to \hsize{Appendix \hfil}
%    \hbox to \hsize{Table \hfil}}}
%\def\@lofheading{
%  \addtocontents{lof}{
%    \protect\stepcounter{listofheading}
%    \protect\addvspace{\@tocchapterskip}
%    \hbox to \hsize{Appendix \hfil}
%    \hbox to \hsize{Figure \hfil}}}
%
%
%=============================================================================
% ZUSAMMENFASSUNG
%=============================================================================
\def\abstract{%    

  \def\@evenhead{}
  \def\@evenfoot{}
  \def\@oddhead{}
  \def\@oddfoot{}

  \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \else
    \@restonecolfalse
  \fi
    
    \vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
        { \parindent 0pt%
          \topsep 0pt%
          \parskip 0pt%
          \Abstandeinfach\Large\bf
          \raggedright
          \if@en
          ABSTRACT
          \else
          KURZFASSUNG
          \fi
          \par \nobreak
          \vskip 20mm
        }
    \relax
}
%
\def\endabstract{%    
    \if@twoside
        \newpage
        \thispagestyle{empty}
        \cleardoublepage
    \else
        \clearpage
    \fi
    
    \if@restonecol
        \twocolumn
    \fi
    
    \setcounter{page}{1}
}
%
%
%
%=============================================================================
% VORWORT
%=============================================================================
\def\vorwort{%
    \def\@oddfoot{}
    \def\@evenfoot{}
    \def\@oddhead{}
    \def\@evenhead{}

    \if@twocolumn
        \@restonecoltrue
        \onecolumn
    \else
        \@restonecolfalse
    \fi
    
    \vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
        { \parindent 0pt%
          \topsep 0pt%
          \parskip 0pt%
          \Abstandeinfach\Large\bf
          \raggedright
          \if@en
          PREFACE
          \else
          VORWORT
          \fi
          \par \nobreak
          \vskip 20mm
        }
    \relax
}
%
\def\endvorwort{%
    
    \if@restonecol
        \twocolumn
    \fi
    \if@twoside
        \newpage
        \thispagestyle{empty}
        \cleardoublepage
    \else
        \clearpage
    \fi
    \setcounter{page}{1}%ACHTUNG DIE POSITION VON SETCOUNTER BEEINFLUSST NAT?RLICH DIE CLEARPAGEANEWISUNGEN
}
%
%
%
%=============================================================================
% EINSTELLUNGEN INHALTSVERZEICHNIS
%=============================================================================
% \subsection Befehl erzeugt \contentsline{subsection}{TITLE}{PAGE}
% im Inhaltsverzeichnis ".toc-Datei". 
% TITLE = Eintrag, PAGE = Seitennummer
% F?r nummerierte Kapitel: TITLE = \numberline{NUM}{HEADING}
% NUM = Zahl erzeugt durch Z?hler \thesubsection.
% Die weiteren Eintr?ge erfolgen analog
%
% \contentsline{NAME} => \l@NAME.  
% Definition der internen Register f?r die Ausgabenaufbereitung
%
% \@dottedtocline{Stufe}{Einr?ckung}{FeldweiteNummerierung}{TITLE}{PAGE}
%    Stufe     : Kennziffer Gliederungsstufe
%    Feldweite : Die Gr??e der Box f?r die Gliederungsnummer
%
% Ben?tigte Definitionen
%   \@pnumwidth : Boxgr??e f?r Seitennummer
%   \@tocrmarg  : rechter Rand f?r mehrzeilige Eintr?ge
%   \@dotsep    : Punktabstand f?r Punktlinie
% Werte Standard aus Kopka S.121
%=============================================================================
\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
%Gliederungstiefe f?r die Aufnahme ins Inhaltsverzeichnis
\setcounter{tocdepth}{2}
%
%
\def\tableofcontents{\@tableof{\contentsname}{}\@headingtoc}
%
\def\@tableof#1#2{%
  \def\@oddfoot{}
  \def\@evenfoot{}
  \def\@evenhead{}
  \def\@oddhead{}
 
  \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \else
    \@restonecolfalse
  \fi
  \vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
    { \parindent 0pt%
      \topsep 0pt%
      \parskip 0pt%
      \Abstandeinfach\Large\bf
      \raggedright
      #1
      \par \nobreak
      \vskip 20mm
    }
  \relax
  \thispagestyle{firstchapterpage}
  \markboth{#1}{#1}
  \if@en
    \hbox to \hsize{#2 \hfil page}
  \else
    \hbox to \hsize{#2 \hfil Seite}
  \fi
  \Abstandeinfach  
}
%
%
\def\@headingtoc{%
  \def\thepage{\@roman\c@page}
  \setcounter{page}{1}
  \def\@oddfoot{\hfil \rm \thepage}
  \def\@evenfoot{\rm \thepage \hfil}
  \def\@oddhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
  \def\@evenhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\strut\leftmark\hfil}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
%
  \@starttoc{toc}
    
  \if@twoside
    \newpage
    \thispagestyle{empty}
    \cleardoublepage
  \else
    \clearpage
  \fi
  
  \if@restonecol
    \twocolumn
  \fi
  
  \markboth{}{}
  \setcounter{page}{1}
  \def\thepage{\@arabic\c@page}
}
%
%  
\def\l@part#1#2{%
  \addpenalty{-\@highpenalty}
  \addvspace{2.25em plus 1pt}  % space above part line
  \begingroup
  \@tempdima 3em         % width of box holding part number, used by
    \parindent \z@ \rightskip \@pnumwidth             %% \numberline
    \parfillskip -\@pnumwidth
    {\large \bf       % set line in \large boldface
    \leavevmode          % TeX command to enter horizontal mode.
    #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
    \nobreak             % Never break after part entry
  \endgroup}
%  
\def\l@chapter#1#2{\pagebreak[3]
  \vskip\@tocchapterskip % space above chapter line
  \@dottedtocline{0}{0pt}{1.5em}{{\bf #1}}{#2}}
% GGF MUSS HIER WIEDER AUF DIE ALTE DEFINITION AUS BOOK ZUR?CKGEGRIFFEN WERDEN
%
\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%
%
%
%=============================================================================
% EINSTELLUNGEN Tabbelen und Abbildungsverzeichnis
%=============================================================================
\def\@listof#1#2{%
  
  \if@twoside
    \cleardoublepage
  \else
    \clearpage
  \fi
  
  \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \else
    \@restonecolfalse
  \fi
  \vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
    { \parindent 0pt%
      \topsep 0pt%
      \parskip 0pt%
      \Abstandeinfach\Large\bf
      \raggedright
      #1
      \par \nobreak
      \vskip 20mm
    }
  \relax
  \thispagestyle{firstchapterpage}
  \markboth{#1}{#1}
  \hbox to \hsize{#2 \hfil Seite}
  \Abstandeinfach  
}

\def\listoffigures{
  \@listof{\listfigurename}{Abbildung}
  {\protect\addcontentsline{toc}{chapter}{\listfigurename}}
  \@headinglo{lof}
  }
%
\def\l@figure{\vskip 1.0em plus 1pt \@dottedtocline{0}{0em}{2.5em}}
%
%
\def\listoftables{
  \@listof{\listtablename}{Tabelle}
  {\protect\addcontentsline{toc}{chapter}{\listtablename}}
  \@headinglo{lot}
  }
%
\let\l@table\l@figure
%
\def\@headinglo#1{%
 \if@twocolumn
    \@restonecoltrue
    \onecolumn
  \else
    \@restonecolfalse
  \fi
  \def\@oddfoot{\hfil \rm \thepage}
  \def\@evenfoot{\rm \thepage \hfil}
  \def\@oddhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
  \def\@evenhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\strut\leftmark\hfil}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
%
  \@starttoc{#1}
  \if@restonecol
    \twocolumn
  \fi
  \clearpage
}
%
%
%=============================================================================
% EINSTELLUNGEN Fu?noten
%=============================================================================
% \footnoterule: Macro f?r die Trennung von Fu?noten vom Text
%=============================================================================
\def\footnoterule{\kern-3\p@
  \hrule width .6\columnwidth
  \kern 2.6\p@}                 
\@addtoreset{footnote}{chapter}
%
% \@makefntext{Text} : erzeugt die Fu?note
\long\def\@makefntext#1{\parindent 1em\noindent
  \hbox to 1.8em{\hss$^{\@thefnmark}$}\Abstandeinfach\footnotesize #1}
%
% \@makefnmark : Default
%
%
%=============================================================================
% EINSTELLUNGEN Tabellen und Abbildungen
%=============================================================================
\setcounter{topnumber}{2}
\def\topfraction{.5}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.5}
\def\floatpagefraction{.3}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}
%
%
%=============================================================================
% \@makecaption{NUMMER}{TEXT} : Macro f?r caption von Bildern und Tabellen
%=============================================================================
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
%
%
%=============================================================================
% To define a float of type TYPE (e.g., TYPE = figure), the document style
% must define the following.
%
%  \fps@TYPE   : The default placement specifier for floats of type TYPE.
%
%  \ftype@TYPE : The type number for floats of type TYPE.  Each TYPE has
%                associated a unique positive TYPE NUMBER, which is a power
%                of two.  E.g., figures might have type number 1, tables type
%                number 2, programs type number 4, etc.
%
%  \ext@TYPE   : The file extension indicating the file on which the
%                contents list for float type TYPE is stored.  For example,
%                \ext@figure = 'lof'.
%
%  \fnum@TYPE  : A macro to generate the figure number for a caption.
%                For example, \fnum@TYPE == Figure \thefigure.
%
%  The actual float-making environment commands--e.g., the commands
%  \figure and \endfigure--are defined in terms of the macros \@float
%  and \end@float, which are described below.
%
%  \@float{TYPE}[PLACEMENT] : Macro to begin a float environment for a
%     single-column float of type TYPE with PLACEMENT as the placement
%     specifier.  The default value of PLACEMENT is defined by \fps@TYPE.
%     The environment is ended by \end@float.
%     E.g., \figure == \@float{figure}, \endfigure == \end@float.
%=============================================================================
%=============================================================================
% FIGURE
%=============================================================================
\newcounter{figure}[chapter]
\def\thefigure{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename \ \thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
%
%
%=============================================================================
% TABLE
%=============================================================================
\newcounter{table}[chapter]
\def\thetable{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename \ \thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
%
%
%=============================================================================
% LITERATURVERZEICHNIS
%=============================================================================
\newdimen\bibindent
\setlength\bibindent{1.5em}

\newenvironment{thebibliography}[1]
     {
         \cleardoublepage
         
         \if@twocolumn
            \onecolumn
         \else
         
         \vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
         {  \parindent 0pt%
            \topsep 0pt%
            \parskip 0pt%
            \Abstandeinfach\Large\bf\raggedright
            \bibname
            \par \nobreak
            \vskip 20mm
         }
         \relax
         \thispagestyle{firstchapterpage}
         \markboth{\bibname}{\bibname}
         
         \addcontentsline{toc}{chapter}{\bibname}

         \Abstandeinfach  
         
         \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
            
         \sloppy
         \sfcode`\.\@m
         \clubpenalty4000
         \@clubpenalty \clubpenalty
         \widowpenalty4000%
      
      \@headingbib
      }
      
      {\def\@noitemerr{
         \@latex@warning{Empty `thebibliography' environment}}%
       \endlist}
       
      \newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
%
%
\def\@headingbib{%
  \def\@oddfoot{\hfil \rm \thepage}
  \def\@evenfoot{\rm \thepage \hfil}
  \def\@oddhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
  \def\@evenhead{
      \setlength{\@tempdima}{\textwidth}\hb@xt@ \@tempdima{\vbox{%
            \hb@xt@ \@tempdima{{\hfil\strut\rightmark}}%
            \ifnum \c@secnumdepth > \z@
            \vskip 1.5\p@ \hrule
            \fi
            }}\hss
  }
}
%
%
%=============================================================================
% AUFLISTUNG DER FORMELZEICHEN, ABKR?ZUNGEN, DEFINITIONEN
%=============================================================================





%=============================================================================
% INDEX
%=============================================================================
\newenvironment{theindex}{%
    \def\@oddfoot{}
    \def\@evenfoot{}
    \def\@evenhead{}
    \def\@oddhead{}
    \cleardoublepage
    \addcontentsline{toc}{chapter}{INDEX}
    %  
    \if@twocolumn
        \@restonecolfalse
    \else
        \@restonecoltrue
    \fi
    %
    \columnseprule 1\p@
    \columnsep 35\p@
    \@headingbib
    \markboth{INDEX}{INDEX}
    \twocolumn[\vspace*{0.65\majorheadskip}%       %Skip k?rzer als bei neuem Kapitel
         {  \parindent 0pt%
            \topsep 0pt%
            \parskip 0pt%
            \Abstandeinfach\Large\bf\raggedright
            INDEX
            \par \nobreak
            \vskip 20mm
         }]
    \parindent\z@
    \parskip\z@ \@plus .3\p@\relax       
    \let\item\@idxitem
    }
    {\if@restonecol\onecolumn\else\clearpage\fi} % ?berfl?ssig, da danach keine Eintr?ge mehr folgen sollen
%
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
%
%
% =============================================================
% INITIALISIERUNG
% =============================================================
\pagestyle{headings}
\pagenumbering{arabic}

\if@bt
  \flushbottom   % Seitenstretch gleiche Fussl?nge
\else
  \raggedbottom  % Seiten abschneiden
\fi

\brokenpenalty=5000    % STRAFPUNKTE F?R SEITENUMBRUCH IN GETRENNTEM WORT
\clubpenalty=5000      % STRAFPUNKTE F?R DAS VERBLEIBEN EINES EINZELSATZES EINES NEUEN ABSATZES
                        % AM ENDE EINER SEITE 
\@clubpenalty \clubpenalty
\widowpenalty=5000     % STRAFPUNKTE F?R ALLEINSTEHENDE ZEILEN AM BEGINN EINER SEITE
%
\makeindex%[-g[-s MST_files\index_stil.sti]]Dipl_Bac_Arbeit.idx
\endinput
% ============================================
% ENDE KLASSE
