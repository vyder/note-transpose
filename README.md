# Note Transpose
[![Gem Version](https://badge.fury.io/rb/note-transpose.svg)](https://badge.fury.io/rb/note-transpose)
[![Build Status](https://travis-ci.org/vyder/note-transpose.svg?branch=master)](https://travis-ci.org/vyder/note-transpose)
[![Inline docs](http://inch-ci.org/github/vyder/note-transpose.svg?branch=master)](http://inch-ci.org/github/vyder/note-transpose)

A CLI tool to transpose notes by half steps

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Documentation](#documentation)
- [Support](#support)
- [Contributing](#contributing)

## Install

    ❯ gem install note-transpose

## Usage

    ❯ note-transpose --help

    Usage: note-transpose [-]<number half steps> <notes> [--pref-flat]

      Options:
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

You can even include the module in your code if you need that for some reason:

    require 'note-transpose'

    NoteTranspose.transpose(3, "D#", "F", "Bm", "G7")
    # => ["F#", "Ab", "Dm", "Bb7"]

    NoteTranspose.transpose(3, "D#", "F", "Bm", "G7", pref_flat: true)
    # => ["Gb", "Ab", "Dm", "Bb7"]

## Documentation

You can find the docs hosted at:

- [This repo's Github pages](https://vyder.github.io/note-transpose/)
- [RubyGems](https://rubygems.org/gems/note-transpose)

## Support

Please [open an issue](https://github.com/vyder/note-transpose/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/vyder/note-transpose/compare/).
