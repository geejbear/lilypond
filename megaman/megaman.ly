\version "2.22.0"

\paper {
    #(set-paper-size "letter")
    top-margin = 0.625\in
    bottom-margin = 0.625\in
    left-margin = 0.625\in
    right-margin = 0.625\in
    indent = 0.75 \in
    ragged-last-bottom = ##f
    footnote-separator-markup = ##f
    tagline = ##f
}

\header { }

global= {
    \time 4/4
    \key g\minor
}

violinOne = \new Voice \relative c'' {
    \tempo 4 = 160
    d2~ d8 g, bes c
    d2. f4
    e2~ e8 d c es~
    es2. d8 c
    \appoggiatura cis8( d8) bes g( g) f g( g) bes( bes) g~
    g bes( bes) c( c) \appoggiatura c8( des) c bes g bes~ bes2~
    bes2 es8-> es4.-> 
    
    r8 g, a bes c d f g~ g c,~ c f~ f g~ g \appoggiatura b8( c)~
    c4 bes g8 f4 \appoggiatura fis8( g8)~
    g fis d2 fis8 g( 
    g) \appoggiatura cis8( d) bes g d g, a bes
    c8. d f8 g8. bes c8 
    d8. c bes g bes a8~ a16 d,8. fis a d fis8 

    \repeat unfold 2 { d,16-. d-. c-. d~-. d c8-. d-. c-. d16-. d8-. c-. }
    bes16 g a bes c a bes c d bes c d f es d c a' g d a' g d a' g d a' g d a' g fis d
    \repeat volta 2 {
        d4 r8 d4 d d8~
        d8 r d4 d d
        d4 r8 d4 d d8~
        d8 r d4( d8) d f a~
        a4 g8 f4 d8 f a8~
        a4 g8 f4 e4 f8~
        f8 e d4 d c
        c8 d4 d8~ d2
        d8 f g d c' d, bes' d, a' d, g d f g4 a8~
        a f d c d f4 a8 f d c d~ d d4 d8
        d8 f g d c' d, bes' d, a' d, g d f g4.
        a8 a g a~ a8 a g a d d c d~ d c d r8
    }
    
}

violinTwo = \new Voice \relative c'' {
    \tempo 4 = 160
    bes2~ bes4 bes8 g 
    a2 \tuplet 3/2 { bes4 g f}
    e2 e8 f g bes~    
    bes2 a2   
    \repeat unfold 2 { g,4 d' bes c }
    r2. r8 \appoggiatura c''8( des) 
    c bes g bes bes-> c4.->
    g,1
    bes
    d
    f,2 fis
    g1
    bes
    d
    d
    \repeat unfold 2 { g,16-. g-. g-. g~-. g g8-. g-. g-. g16-. g8-. g-. }
    g16 es f g a f g a bes g a bes d c bes a    
    d,4 fis a d
    \repeat volta 2 {
        d8 c d4 f e
        c8 f4 e d c8~
        c8 c d4 f e
        c8 f4 e d4.
        \repeat unfold 2 { f,16-. f-. bes,-. bes-. d-. d-. bes-. bes-. } \repeat unfold 2 { f'-. f-. c-. c-. d-. d-. c-. c-. } 
        \repeat unfold 2 { g'-. g-. d-. d-. f-. f-. d-. d-. } g-. g-. d-. d-. a'-. a-. d,-. d-. g-. g-. d-. d-. f-. f-. d-. d-.   
        d'1_\markup \italic "espressivo"
        c
        f
        e2 c
        a1
        g
        d1~
        d2.~ d8 r8
    }
}

%viola = \new Voice \relative c' {
   % \clef alto
   % r
   % \bar "|."
%}

cello = \new Voice \relative c' {
    \clef bass
    \tempo 4 = 160
    g1
    f2. f8 g
    c,2~ c8 d-> r es~
    es2.~ es8 fis
    g1
    f
    es
    es2 es8-> f4.->
    g1
    f2. f8 g
    c,2~ c4. cis8
    d1
    g2. g8 fis
    f2. f8 e
    es1
    d 
    es16-. es-. es-. es~-. es es8-. es-. es-. es16-. es8-. es-.
    f16-. f-. f-. f~-. f f8-. f-. f-. f16-. f8-. f-.
    g4 a bes c
    < d a'-0 >1 \bar "||" 
    \repeat volta 2 { 
        <<
            { g,8-.\downbow g16-.\upbow g-.\downbow r8 g16-.\downbow g-.\upbow g8 g16 g r8 g16 g }

            \new Staff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #2/3    
                firstClef = ##f
            }

            {{ \tempo 4 = 168 \clef bass } { g8\upbow^\markup \italic Ossia g16\staccato(\downbow g) 
                r8 g16\staccato(\downbow g\staccato) g8 g16 g r8 g16 g }}
          
        >>
        \repeat percent 3 { g8 g16 g r8 g16 g g8 g16 g r8 g16 g } 
        bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
        c8 c16 c r8 c16 c c8 c16 c r8 c16 c
        d,8 d16 d r8 d16 d d8 d16 d r8 d16 d
        d8 d16 d r8 d16 d d8 d'16 d r8 d16 d

        bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
        c8 c16 c r8 c16 c c8 c16 c r8 c16 c
        d8 d16 d r8 d16 d d8 d16 d r8 d16 d
        d8 d16 d r8 d16 d c8 c16 c r8 c16 c

        bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes
        c8 c16 c r8 c16 c c8 c16 c r8 c16 c
        d,8 d16 d r8 d16 d d8 d16 d r8 d16 d
        d8 d16 d r8 d16 d d8 d16 d d8 r 
        
    }
}


\score {
    \new StaffGroup <<
        \new Staff \with { instrumentName = "Violin 1" }
        << \global \violinOne >>
        \new Staff \with { instrumentName = "Violin 2" }
        << \global \violinTwo >>
        % \new Staff \with { instrumentName = "Viola" }
        % << \global \viola >>
        \new Staff = "cello" \with { instrumentName = "Cello" }
        << \global \cello >>
    >>
    \layout { }
}
