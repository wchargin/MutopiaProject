% Created on Mon Sep 24 2007
\version "2.11.33"
%#(set-global-staff-size 17)
\include "english.ly"
 
\paper {
	%#(set-paper-size "a4")
	%#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##f
	ragged-bottom = ##t
}


\header {
	title = "Twelve Monferrine"
	subsubtitle = "No. 3."
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Twelve Monferrine: No. 3"
 mutopiacomposer = "KnjzeF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #279"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/10/14-1066"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%% Source
%% Boije collection # 279
%% http://www.muslib.se/ebibliotek/boije/
%%
%% Praga presso Marco Berra.
%% Fra. Max Knjze (also spelled Kniže) was born
%% 7 Sep 1784 in Dralielcice, near Beroun, Bohmen. 
%% He died 23 Jul 1840 in Prague, Czechoslovakia.
%% He was a guitarist, composer and conductor.
%%



%%%% shortcuts
%  fingering orientations
	sfol = \set fingeringOrientations = #'(left)
	sfor = \set fingeringOrientations = #'(right)
	sfod = \set fingeringOrientations = #'(down)
	sfou = \set fingeringOrientations = #'(up)

%  string number orientations
	ssnol =  \set stringNumberOrientations = #'(left)  %(down right up)
	ssnou =  \set stringNumberOrientations = #'(up)
	ssnod =  \set stringNumberOrientations = #'(down)
	ssnor =  \set stringNumberOrientations = #'(right)

%  position indicators
	II = \markup {\smaller "II"}
	IIa = \markup {\smaller \hspace #2.0 \bold "CII"}
	III = \markup {\smaller  "III"}
	IV = \markup {\smaller  "IV"}
	V = \markup {\smaller  "V"}
	VII = \markup {\smaller  "VII"}
	VIII = \markup {\smaller  "VIII"}
%% (alternates A)
	loc = \markup{\smaller"loco."}
	bpos = \markup{\smaller"2 pos:"}
	cpos = \markup{\smaller"3 pos:"}
	dpos = \markup{\smaller"4 pos:"}
	epos = \markup{\smaller"5 pos:"}
	gpos = \markup{\smaller"7 pos:"}
	ipos = \markup{\smaller"9 pos:"}
	eposd = \markup{\smaller\column{"5 pos:" "dol:"}}
	
%% dynamics per original
mF = \markup { \smaller \bold "mf"}
F = \markup { \smaller \bold "f"}
sF = \markup { \smaller \bold "sf"} 

% miscellaneous and reminders
	harm = \once \override NoteHead #'style = #'harmonic 
	octavado = \markup { \smaller \italic "arm. 12" }
	octavados= \markup {\smaller\italic\column {"arm." "12" }}
	%\mark \markup {\smaller \smaller \musicglyph #"scripts.segno"}
	%\markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
	% \arpeggioUp \arpeggio
	%segn = \markup { \smaller \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }

%% End shortcuts




upper = {
	\set Staff.instrumentName=\markup{\larger\bold "Nº. 3  "}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5

	\repeat volta 2 {
		\partial 8*4	
		s8 \grace {d16_\mF} <c a>8.[ <b gs>16 <c a>8 ]|
		<a f>4 <a f>8 \grace {\stemUp d16} <c a>8 <b gs> <c a> |
		<f c a>4 <c a>8 \grace {g'16} <f a,>8. <e g,>16 <f a,>8 |
		g4^\< g8 <f d>4 <f d>8\! |
		<e c g>4. \grace {d16} <c a>8. <b gs>16 <c a>8 |
		<a f>4 <a f>8 \grace {d16} <c a>8. <b gs>16 <c a>8 |
		<f a,>4 <c a>8 <f a,>8 <g bf,> <a c,> |
		g4 g8 <e c>4 <e c>8 |
		f4. 
		
		}
	\repeat volta 2 {
		\partial 8*3
		a,8._\F gs16 a8 |
		bf4 a8 cs4 a8 |
		d4 a8 e'4 a,8 |
		<f' a,>4 <f a,>8 g4 d8 |
		cs4. \grace {d16} <c a>8. <b gs>16 <c a>8 |
		<a f>4 <a f>8 \grace {d16} <c a>8. <b gs>16 <c a>8 |
		<f a,>4 <c a>8 <f a,> <g bf,> <a c,> |
		g4 g8 <e c>4 <e c>8 |
		f4.
		
		}
	
		
	}
}		

middle = {
	\relative c'' {
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
%% middle voice can interfere... use the following
%		\override Stem #'length-fraction = #0.4
	\repeat volta 2 {
		\partial 8*4
		s8 \grace s16 
		\stemDown s8*3 |
		s2.*5 |
		\grace s8 s2.
		\grace s8 s2.
		s4.
		}
	\repeat volta 2 {
		\partial 8*3
		s4.
		s2.*3
	}
	}
}

lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*4
		s8 \grace {s16} r4 r8 | \stemDown
		f,4._\sF \grace {s16} r4 r8 |
		f4._\sF \grace {s16} r4 r8 |
		bf4 bf8 <g' b,>4 <g b,>8 |
		c,4._\F \grace {s16} r4_\mF r8 |
		f,4._\sF \grace {s16} r4 r8 |
		f4._\sF r4 r8 |
		<d'' bf bf,>4 <d bf bf,>8 <bf c,>4 <bf c,>8 |
		<c a f,>4. 
		
		
		}
	\repeat volta 2 {
		\partial 8*3
		s4. |
		bf,4_\sF a8 cs4_\sF a8 |
		d4_\sF a8 cs4_\sF a8 |
		d4 d8 <bf' g,>4 <bf g,>8 |
		<a a,>4. \grace {s16} r4_\mF r8 |
		f,4._\sF \grace {s16} r4 r8 |
		f4._\sF r4 r8 |
		<d'' bf bf,>4 <d bf bf,>8 <bf c,>4 <bf c,>8 |
		<c a f,>4.

	}
	}
}	

staffClassicalGuitarC = \new Staff 

%%%  this moves the fingering closer to the note than default
		\with { 
			\override Fingering #'padding = #0.2 
		}
			{
			\time 6/8
			\key f \major
%			\tempo 4 = 72
%			\set Staff.instrumentName=\markup{\smaller\column{"Classical" "Guitar."}}
			\set Staff.midiInstrument="acoustic guitar (nylon)"
		%	\transposition c,
	<<
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
			\new Voice = A { \voiceOne  \upper }
%			\new Voice = B { \voiceTwo  \middle }
			\new Voice = C { \voiceFour  \lower }
	>>
%		\bar "|."  %% End the piece if no repeat at end
}

\score { 
	\staffClassicalGuitarC
	}

		
\layout  {
		 \context { \Voice
%%% provides thicker glissando and moves closer to notes
			 \override Glissando #'thickness = #3
			 \override Glissando #'gap = #0.05

%%% adjust fingering size, distance from note
			\override Fingering #'font-size = #-6
			\override Fingering #'padding = #0.3
		 	}
	\context { \Score
			\override MetronomeMark #'extra-offset = #'(-9 . 0)
			\override MetronomeMark #'padding = #'3
			}
		
}		

\score {
	\unfoldRepeats
	\staffClassicalGuitarC
	  \midi {
	    \context {
	      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
