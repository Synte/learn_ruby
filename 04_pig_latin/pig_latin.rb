def translate phrase
    words = phrase.split(" ")
    new_words = []

    words.each do |word|
        capital = (word == word.capitalize)
        shout = (word == word.upcase)

        word = word.downcase
        if word[-1].match?(/\W/)
            ending_character = word[-1]
            word = word[0, word.length - 1]
        end

        first_vowel = word.index(/[aeiou]/).to_i
        if word[first_vowel] == "u" && word[first_vowel - 1] == "q"
            first_vowel = word.index(/[aeiou]/, first_vowel + 1)
        end

        new_word = word[first_vowel, word.length - first_vowel].to_s + \
                   word[0, first_vowel].to_s + \
                   "ay" + \
                   ending_character.to_s

        if capital == true
            new_words.push(new_word.capitalize)
        elsif shout == true
            new_words.push(new_word.upcase)
        else
            new_words.push(new_word)
        end
    end
    
    return new_words.join(" ")
end