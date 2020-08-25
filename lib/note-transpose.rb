
# List of musical notes, as sharps and flats
NOTES = {
    sharp: %w(c c# d d# e f f# g g# a a# b),
    flat:  %w(c db d eb e f gb g ab a bb b)
}


module NoteTranspose
    class Error < Exception; end

    # Transposes array of notes by specified number of half_steps
    #
    # Examples:
    #
    #   transpose(-1, %w(C F Am G))
    #   => ["Bb", "Eb", "Gm", "F"]
    #
    #   transpose(-10, %w(C F Am G))
    #   => ["D", "G", "Bm", "A"]
    #
    #   transpose(3, %w(D# F Bm G7))
    #   => ["F#", "Ab", "Dm", "Bb7"]
    #
    #   transpose(3, %w(D# F Bm G7), pref_flat: true)
    #   => ["Gb", "Ab", "Dm", "Bb7"]
    #
    def self.transpose(half_steps, *notes, pref_flat: false)
        notes.flatten!
        transposed_notes = []

        notes.each do |note|
            note.downcase!
            begin
                m = note.match /^[a-g](#|b)?/
                actual_note = m[0]

                index = NOTES[:flat].find_index(actual_note)

                if index.nil?
                    source = NOTES[:sharp]
                    index  = NOTES[:sharp].find_index(actual_note)
                else
                    source = NOTES[:flat]
                end

                # Still haven't found the note
                raise Error if index.nil?

                index += half_steps
                index %= source.size

                if pref_flat
                    transposed_note = NOTES[:flat][index]
                else
                    transposed_note = source[index]
                end

                transposed_notes << note.gsub(actual_note, transposed_note).capitalize
            rescue
                raise "'#{note.capitalize}' is not a valid note!"
            end
        end

        transposed_notes
    end
end
