\include "english.ly"

\paper {
  #(set-paper-size "a4")
  bottom-margin = 10\mm
  ragged-last-bottom = ##f
}
\header{
  title = "Allemande"
  composer = "Ernst Gottlieb Baron"
}

melody = \relative c'' {
  \clef treble
  \key a \minor
  \time 4/4
  
  \repeat volta 2 {
    \partial 8*3 e8 fs gs |
    a4 a,8 b c b c d |
    e4 e,8 fs gs a b c |
    r8 d8 b d gs, f' e d |
    c4 c8 b a c b c |
    d4 g,8 d' f, e f g | %5
    e4 e8 f g c b c |
    a4 a8 g a d c d |
    b4 b8 a b e d e |
    c4 c8 b c f e f |
    d8 f e d d4. c16 d16 | %10
    c4. d8 e d e f |
    d8 c b c d c d e |
    c8 b a b c b c d |
    \partial 8*5 <e b gs>2 r8 | }
  \repeat volta 2 {
    \partial 8*3 b8 cs ds |
    <e b g>4. b8 e ds e fs |
    <g e b>4. b,8 g' fs g a |
    b4. b8 <a ds,>4 b8 a8 |
    <g e b>4 e8 fs g2~ | %18
    g4. a8 f4 d8 (e) |
    f4 d8 (e) f (g) a b |
    c4 r8 c4 c4 c8 | %21
    b4 g8 fs g a b c |
    d4 r8 d4 d4 d8 | %23
    <c e,>4. c8 b~ c b a |
    gs4 a8 b, e, b' a gs |
    gs (a4) a4 b4 gs8 |
    \partial 8*5 a2 r8 | %27
  }
}

bass = \relative c' {
  r8 r4 |
  a2. a4 |
  gs1-3 |
  b2. gs4 |
  a2. a4 |
  b1 | %5
  c4 c8 d e4 e, |
  f4 f8 e8 f2 |
  g4 g8 f g2 |
  a4 a8 g a2 |
  b4 c8 f, g2 | %10
  c1 |
  b1 |
  a2 a2 |
  e2 r8 |
  r8 r4 |
  e1 |
  e1 |
  g2 fs'4 ds4|
  e2. e8 (d8) |
  cs8 b a4 d2 | %19
  d1 |
  r4 a' fs d |
  g1 |
  r4 b gs e | %23
  a4. a8 d,2 |
  e4 d4 e4 e,4 |
  r4 a4 d4 e4 |
  r4 a,4 r8 |

}
music = {
  <<
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \context Voice = "1" { \voiceOne \melody }
    \context Voice = "2" { \voiceTwo \bass }
  >>
}

\score {
  \new Staff \music
  \layout { }
  \midi { }

}