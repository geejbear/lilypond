\version "2.22.0"

\paper {}

\header {}

global= {
  \time 4/4
  \key g\minor
}

violinOne = \new Voice \relative c'' {
  c2 d
  e1
  \bar "|."
}

violinTwo = \new Voice \relative c'' {
  g2 f
  e1
  \bar "|."
}

viola = \new Voice \relative c' {
  \clef alto
  e2 d
  c1
  \bar "|."
}

cello = \new Voice \relative c' {
  \clef bass
    g1
    f2. f8 g
    c,2~ c8 d r es~
    es2.~ es8 fis
    g1
    f
    es
    es2 es8 f4.
    g1
    f2. f8 g
    c,2~ c4. cis8
    d1
    g2. g8 fis
    f2. f8 e
    es1
    d' \bar "|."
    es,16 es es es~ es es8 es es es16 es8 es
    f16 f f f~ f f8 f f f16 f8 f
    g4 a bes c
    d1
    bes,8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
    bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
    bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
    bes8 bes16 bes r8 bes16 bes bes8 bes16 bes r8 bes16 bes 
    
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
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
  >>
  \layout { }
  \midi { }
}
