\version "2.22.0"

\header {
  title = "The Mirror"
  composer = "Matt Whipple"
}

verseonelyrics = \lyricmode {
  You go for a walk a -- long the wa- ter
  Look at the world cast by the waves
  In it your dreams, a perfect order
  Fulfilling all that your heart craves
}

versetwolyrics = \lyricmode {
  Your grace is untouched in the mirror
  Your gorgeous face beyond compare
  Turn away from reality's terrors
  Refuse to accept what's dwelling there
}

choruslyrics = \lyricmode {
  The mirror shows you what you want to see
  Don a mask and the mask you shall be
  Anything is possible, believe in yourself
  Everything's forgotten in your internal world
}

versethreelyrics = \lyricmode {
  You love the water, you walk along the shore
  The drops touch your lips and you love it a little more
  You wade into the depths, entering paradise
  Here you know everything, nothing escapes your eyes
}

versefourlyrics = \lyricmode {
  You walk deeper this world now fills your lungs
  Your old life falls away now; your journey's just begun
  Never again to face the world, the problems that it brings
  Completely drowned in yourself, forget all other things
}

arpG  = \relative g' { g8 { g'8 d8 b8 b'8 g8 d8 b8 } }
arpEm = \relative e' { e8 { g'8 e8 b8 b'8 g8 e8 b8 } }
arpD  = \relative d' { d8 { fis'8 d8 a8 c'8 fis,8 d8 a8 } }

verseguitar = {
  \arpG | \arpEm | \arpD | \arpD |
}

versemelody = \relative c' {
  r4. d8 g4 g8 g8 |
  g4 g8 g4( e4) e8 |
  fis8 fis4 r8 r2 |
  r1 |
  r4. r8 g4 g8 g8 |
  g4 g2 e8 e8 |
  fis4 r2. |
}

harmonicaIntro = \relative g' {
  g1 | e2. c4( | d1 | d1) |
}

\score {
<<
  \new Staff {
    \clef "treble"
    \key g \major
    \harmonicaIntro
    \harmonicaIntro
    r1
    | r1 | r1 | r1 | r1 |
  }
  \new Staff {
    \clef "treble"
    \key g \major
    r1 | r1 | r1 | r1 |
    r1 | r1 | r1 | r1 |
    \versemelody
  }
  \addlyrics \verseonelyrics
%  \new Lyrics \versetwolyrics
  \new Staff {
    \clef "treble"
    \key g \major
    \tempo 4 = 120
    \time 4/4
    \verseguitar \verseguitar
    \verseguitar \verseguitar
  }
>>
}