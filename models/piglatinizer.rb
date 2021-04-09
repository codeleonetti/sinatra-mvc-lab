class PigLatinizer

    attr_accessor :phrase

  

    def piglatinize(phrase)
        @phrase = phrase
        array = @phrase.split(" ")
        pig_array = array.collect do |word|
           piglatin_word(word)
        end
        pig_array.join(" ")
    end

    def piglatin_word(word)
        @word = word.chomp
        case word
          when /\A[AEIOUaeiou]/
            new_word = letters_after(0) + "way"
          when /\A[Ww][h]/
            new_word = letters_after(2) + first_letters(2) + "ay"
          when /\A[Pp](l|r)/
            new_word = letters_after(2) + first_letters(2) + "ay"
          when /\A[Tt][h]/
            new_word = letters_after(2) + first_letters(2) + "ay"
          when /\A[Ss][k]/
            new_word = letters_after(2) + first_letters(2) + "ay"
          when /\A[Ss][p][r]/
            new_word = letters_after(3) + first_letters(3) + "ay"
          when /\A[Ss][t][r]/
            new_word = letters_after(3) + first_letters(3) + "ay"
          else
            new_word = letters_after(1) + first_letters(1) + "ay"
        end
      end
    def first_letters(i)
        i -= 1
        @word[0..i]
    end
    
    def letters_after(i)
        ii = @word.length
        @word[i..ii]
    end
end
   

    




