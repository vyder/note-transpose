require 'note-transpose'

RSpec.describe NoteTranspose, '#transpose' do

    it 'scales the notes up correctly' do
        result = NoteTranspose.transpose(3, %w(C F Am G))
        expect(result).to eq %w(Eb Ab Cm Bb)
    end

    it 'scales the notes down correctly' do
        result = NoteTranspose.transpose(-10, %w(C F Am G))
        expect(result).to eq %w(D G Bm A)
    end

    it 'scales sharp notes up correctly' do
        result = NoteTranspose.transpose(4, %w(C# F Am G))
        expect(result).to eq %w(F A Dbm B)
    end

    it 'scales sharp notes down correctly' do
        result = NoteTranspose.transpose(-3, %w(D# F Bm G7))
        expect(result).to eq %w(C D Abm E7)
    end

    it 'scales sharp notes correctly when flat notes preferred' do
        result = NoteTranspose.transpose(3, %w(D# F Bm G7), pref_flat: true)
        expect(result).to eq %w(Gb Ab Dm Bb7)
    end

    it 'scales wierd notes correctly' do
        result = NoteTranspose.transpose(3, %w(D# F Bm Gadd7))
        expect(result).to eq %w(F# Ab Dm Bbadd7)
    end

    it 'raises an error when invalid note is used' do
        expect {
            NoteTranspose.transpose(3, %w(D# F Bm X#))
        }.to raise_error RuntimeError, /not a valid note/
    end
end