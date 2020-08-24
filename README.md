# Note Transpose

A CLI tool to transpose notes by half steps

## Install

    ❯ gem install note-transpose

## Usage

    ❯ note-transpose --help

    Usage: note-transpose [-]<number half steps> <notes> [--pref-flat]
    --pref-flat     Always uses flat notes in output instead of sharp ones

    Examples:
    ❯ note-transpose +1 C G F Am
    => Db Ab Gb Bbm

    ❯ note-transpose 2 C G F Am
    => D A G Bm

    ❯ note-transpose -2 D# G7 F Am7 Cadd7
    => C# F7 Eb Gm7 Bbadd7

    ❯ note-transpose -2 D# G7 F Am7 Cadd7 --pref-flat
    => Db F7 Eb Gm7 Bbadd7

## In code

    require 'note-transpose'

    NoteTranspose.transpose(-3, "C", "F", "Am", "G")
    # => ["A", "D", "Gbm", "E"]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Problems with the code? [Create a new issue](https://github.com/vyder/note-transpose/issues/new) and I will take a look when I have some time.
