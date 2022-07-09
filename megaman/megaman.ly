\version "2.22.0"

\paper { }

\header { }

global= {
    \time 4/4
    \key g\minor
}

violinOne = \new Voice \relative c'' {
    d2~ d8 g, bes c
    d2. f4
    e2~ e8 d c es~
    es2. d8 c
    \appoggiatura cis8( d8) bes g( g) f g( g) bes( bes) g~
    g bes( bes) c( c) \appoggiatura c8( des) c bes g bes~ bes2~
    bes2 bes8 c4.-> 
    
    r8 g a bes c d f g~ g c,~ c f~ f g~ g \appoggiatura b8( c)~
    c4 bes g8 f4 \appoggiatura fis8( g8)~
    g fis d2 fis8 g( 
    g) \appoggiatura cis8( d) bes g d g, a bes
    c8. d f8 g8. bes c8 
    d8. c bes g bes a d, fis a d fis 
     
    %\bar "|."
}

violinTwo = \new Voice \relative c'' {
    g2 f
    e1
    %\bar "|."
}

viola = \new Voice \relative c' {
    \clef alto
    e2 d
    c1
    %\bar "|."
}

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
    es16 es es es~ es es8 es es es16 es8 es
    f16 f f f~ f f8 f f f16 f8 f
    g4 a bes c
    d1 \bar "||" 
    <<
        { g,8\upbow g16\downbow g\upbow r8 g16\staccato(\downbow g\staccato) g8 g16 g r8 g16 g }

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

    a8 a16 a r8 a16 a a8 a16 a r8 a16 a
    c8 c16 c r8 c16 c c8 c16 c r8 c16 c
    d,8 d16 d r8 d16 d d8 d16 d r8 d16 d
    d8 d16 d r8 d16 d d8 r8 r4 
    
    
  \bar "|."
}


\score {
    \new StaffGroup <<
        \new Staff \with { instrumentName = "Violin 1" }
        << \global \violinOne >>
        \new Staff \with { instrumentName = "Violin 2" }
        << \global \violinTwo >>
        \new Staff \with { instrumentName = "Viola" }
        << \global \viola >>
        \new Staff = "cello" \with { instrumentName = "Cello" }
        << \global \cello >>
    >>
    \layout { }
}
