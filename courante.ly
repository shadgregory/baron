\include "english.ly"

\paper {
  #(set-paper-size "a4")
  bottom-margin = 10\mm
  ragged-last-bottom = ##f
}
\header{
  title = "Courante"
  composer = "Ernst Gottlieb Baron"
}

melody = \relative c'' {
  \time 3/4
  \repeat volta 2 {
    \partial 8*3 e8 e e |
    c8 b16 c a8 b c d |
    <e b>2 <e b>4 |
    c8 b a c d e |
    <f c>8 <f c> <f c> <f c> <f c> <f c> |%5
    \tuplet 3/2 {f8 e d}
    \tuplet 3/2 {d c b}
    \tuplet 3/2 {b c d} |
    <e b>8 <e b> <e b> <e b> <e b> <e b> |
    \tuplet 3/2 {e8 d c}
    \tuplet 3/2 {c b a}
    \tuplet 3/2 {a b c} |
    <a d>8 <a d> <a d> <a d> <a d> <a d> |
    d4. f8 e d|%10
    c8 b4 b8 gs a |
    < b gs e >2. |
  }
  \repeat volta 2 {
    \partial 8*3 b8 a b |
    gs8 a  b c d b |
    c8 b a c b c ~ |
    c8 d4 d8 e f |
    e8 d c d e f |%5
    <g c,>8 <g c,> <g c,> <g c,> <g c,> <g c,> |
    g8 a16 g f8 e d e |
    <f c> <f c> <f c> <f c> <f c> <f c> |
    f8 g16 f e8 d c d |
    e8 f d4. c8 |
    c4. b8 c d |
    e d c b a e' |
    f e d c b d ~ |
    d e d c b d |
    gs, fs8 ~ fs2 |
    r8 e a a16 b c8 b |
    r8 e b b16 c d8 b |
    c b4 b8 a8 gs |
    gs8( a4) a8 a8( gs8) |
    gs8( a4) |
  }
}

bass = \relative c' {
  \repeat volta 2 {
    \partial 8*3 r8 r4 |
    a2 a4 |
    r8 e e fs gs e|
    a2. |
    a8 a8 a8 a8 a8a8 |%5
    g2. |
    g8 g8 g8 g8 g8 g8 |
    f2. |
    f8 f8 f8 f8 f8 f8 |
    e2 gs4 |%10
    a8 d8 e,2 |
    e2. |

  }
  \repeat volta 2 {
    \partial 8*3 r8 r4 |
    e2 e4 |
    a2 a4 |
    b4 g2 |
    c2 d4 |%5
    e,8 e e e e e |
    a2. | %7
    d8 d d d d d |
    g,2. |
    c8 f, g2 |
    c2. |
    c2 c4 |
    d2. |
    c2 d4 |
    e,4. f8 e8 d'8 |
    c2. |
    gs2. |
    a8 d8 e,2 |
    r4 a4 e4 |
    r4 a8 |
  }
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