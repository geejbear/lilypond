#(set-global-staff-size 15)
\version "2.19.83"

\paper {
    top-margin = 10 \mm
    left-margin = 15 \mm
    right-margin = 15 \mm
}

\header {
    title = \markup {\normal-text "Umi No Mieru Machi"}
    subtitle = \markup {\normal-text "Kiki's Delivery Service"}
    composer = \markup {\normal-text "Makiko Hirohashi"}
    arranger = "arr. G. M"
    tagline = ""
}

global = {
    \key e\minor
    \time 4/4
    \tempo 4 = 97
    \partial 8
}

violin = \relative c'' {
    \global
    \clef "treble"
    \repeat volta 2 {
        b8
        g'2 fis2
        e2 d4. g,8
        a8 c e g fis d b a 
        b2. r8 b8
        g'2 fis2
        e2 d4. g,8
        a8 c e g a b fis d
        e2 r4 e8 fis 
        g g g g g fis e fis 
        d2 r8 c b c16 d
        e8 e e e e d c d 
        b2. r8 b
        gis a c e d4. cis8
        ais8 b d fis a g fis g
        b4. a16 b e,4. d16 e 
        b4. a16 b r2
        \time 2/4
        fis4. b8 
    }
}

upper = \relative c'' {
    \global
    \clef "treble"
    r8
    r4 <<{g8 b}\\{g4}>> r4 fis8 b
    r4 <<{d8 c}\\{g4}>> r4 g4
    \repeat tremolo 8 {<e g>16} \repeat tremolo 8 {<fis a>16}
    r4 a8 g b, g' a4 
    r4 <<{g8 b}\\{g4}>> r4 fis8 b
    r4 <<{d8 c}\\{g4}>> r4 g4
    \repeat tremolo 4 {<e g>8} \repeat tremolo 4 {<d fis>8}
    r8 g b g e4 r4
    \repeat tremolo 4 {<e g>8} \repeat tremolo 4 <<{g32 fis e fis}\\{e8}>>
    r8 fis a fis d'4 r4
    \repeat tremolo 4 {<c, e>8} \repeat tremolo 4 <<{e32 d c d}\\{c8}>>
    r8 d g d r8 d g4 
    \repeat tremolo 4 {<c, e>8} \repeat tremolo 4 {<d a'>8}
    <d fis a>2 <<{a'8 g fis g}\\{e2}>>
    r4 \relative {<g' cis e>\arpeggio} r \relative {<g cis e>\arpeggio}
    r4 <e' g>4 r 2
    r2
}

lower = \relative c {
    \global
    \clef "bass"
    r8
    e8 g r4 b,8 b' r4 
    c,8 e r4 b'8 d4 d8 
    \repeat tremolo 8 {<a c>16} \repeat tremolo 8 {<d, d'>16}
    g8 b r2.
    e,8 g r4 b,8 b' r4 
    c,8 e r4 b'8 d4 d8 
    \repeat tremolo 4 {<a c>8} \repeat tremolo 4 {<b b>8}
    <e, b'>4 r2. 
    \repeat tremolo 4 {<a c>8} \repeat tremolo 4 {<a c>8}
    b4 r2.
    \repeat tremolo 4 {<g c,>8} \repeat tremolo 4 {<g c,>8}
    g4 r4 g4 r4 
    \repeat tremolo 4{<a>8} \repeat tremolo 4{<fis>8} 
    \repeat tremolo 4{<b>8} \repeat tremolo 4{<e, b>8}
    a4 r a, r
    a' r4 r a,8 <e' g>
    dis'4. r8
}

\score {
<<
    \violin
        \new PianoStaff
            <<
            \new Staff
                \upper
                \lower
            >>
>>    
}
