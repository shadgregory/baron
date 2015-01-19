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
    c8 b16( c) a8 b c d |%1
    <e b>2 <e b>4 |
    c8 b a c d e |
    <f c>8 <f c> <f c> <f c> <f c> <f c> |%4
    \tuplet 3/2 {f8 e d}
    \tuplet 3/2 {d c b}
    \tuplet 3/2 {b c d} |%5
    <e b>8 <e b> <e b> <e b> <e b> <e b> |%6
    \tuplet 3/2 {e8 d c}
    \tuplet 3/2 {c b a}
    \tuplet 3/2 {a b c} |%7
    <a d>8 <a d> <a d> <a d> <a d> <a d> |%8
    d4. f8( e) d|%9
    c8 b4 b8 gs a |%10
    < b gs e >2. |%11
  }
  \repeat volta 2 {
    \partial 8*3 b8 a b |
    gs8 a  b c d b |%12
    c8 b a c b c ~ |%13
    c8 d4 d8 e f |
    e8 d c d e f |%15
    <g c,>8 <g c,> <g c,> <g c,> <g c,> <g c,> |%16
    g8 a16( g) f8 e( d) e |%17
    <f c> <f c> <f c> <f c> <f c> <f c> |%18
    f8 g16 f e8 d c d |%19
    e8 f d4.\trill c8 |%20
    \grace b8 c4. b8\3 c d |%21
    e d c b a e' |%22
    f e d c b d ~ |%23
    d e d c b( a) |%24
    gs fs8 e8 r8 r4 |%25
    r8 e-2 a a16 b c8 b |%26
    r8 e, b' b16( c) d8 b |%27
    c b4 b8\3( a8) gs |%28
    gs8( a4) a8 a8( gs8) |%29
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
    \partial 8*3 r8 r4 |%13
    e2 e4 |%14
    a2 a4 |%15
    b4 g2 |
    c2 d4 |%17
    e,8 e e e e e |
    a2. | %19
    d8 d d d d d |%20
    g,2. |
    c8 f, g2 |
    c2. |
    c2 c4 |
    d2. |
    c2 d4 |
    e,4. f8 e8 d'8 |
    c2.-3 |
    gs2.-4 |
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