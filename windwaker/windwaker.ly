#(set-global-staff-size 17)
\version "2.19.83"


\paper {
    top-margin = 10 \mm
    left-margin = 15 \mm
    right-margin = 15 \mm

}

\header {
    title = \markup {\normal-text "The Legend of Zelda"}
    subtitle = \markup {\normal-text "Windwaker"}
    composer = \markup {\normal-text "K. Nagata, H. Wakai, T. Minegishi, K. Kondo"}
    arranger = "arr. G. M"
    tagline = ""
}

global = {
    \key d\major
    \time 9/8
    \tempo 4. = 120

}

upper = \relative c'' {
    \global
    \clef "treble"
    \repeat unfold 4 {d2.(d4.) e2.(e4.) d2.(d4.) a2.(a4.)}
    
    a2.(a4.) % 2da volta

    \repeat unfold 2 {d2.(d4.) e2.(e4.) d2.(d4.) a2.(a4.)}
}

lower = \relative c {
    \global
    \clef "bass"
    \repeat unfold 16 {<g d' e g>2.(<g d' e g>4.)}
    \repeat unfold 9 {<g d' e g>2.(<g d' e g>4.)}
    }

flute = \relative c'' {
    \global
    \clef "treble"
    \compressMMRests {R1*9/8*7}
    
    r4. r4. a4 a8
    \repeat volta 2 {
        a4 d8 fis4 e8 d4 cis8
        d4 b8 g4 cis8 a d b 
        cis4 a8 g4 d'8 b4 cis8
        d4 e8 fis8 d e a,4 a8 

        a4 d8 fis4 e8 d4 cis8
        d4 b8 g4 cis8 a d b 
        cis4 d8 e4 fis8 g e cis 
    }

    \alternative {
        {d4. d8 r8 r a4 a8}
        {d4. d8 r8 r r4.}
    }

    \compressMMRests {R1*9/8*8}
}

violin = \relative c'' {
    \global
    \clef "treble"
    \compressMMRests {R1*9/8*16}

    r4. r4. a'4 a8
    \repeat volta 2 {
        g fis e fis4 d8 cis d e
        a d, d g d d fis d d
        g a b b g e a4 a8 
        g fis d e fis e e4 e8
        d8 cis d e4 e8 a e cis
        g' d d fis4 fis8 e4 e8
        d8 cis d g a b fis d fis e4. e4 r8 r4.
    }
}

\score {
<<

    \new StaffGroup 
    <<
        \new Staff \with {
            instrumentName = "violin"
        } {\violin}
        \new Staff \with {
            instrumentName = "flute"
        }{\flute}
    >>

    \new PianoStaff 
    <<
        \new Staff 

            \upper
            \lower
    >>
>>
}
            
            
