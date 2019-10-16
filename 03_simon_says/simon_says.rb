def echo say
    return say
end

def shout say
    return say.upcase
end

def repeat say, n=2
    return ("#{say} " * n).strip
end

def start_of_word word, n
    return word[0, n]
end

def first_word phrase
    return phrase[/\w+/, 0]
end

def titleize phrase
    little_words = ["and", "or", "the", "over", "in", "of", "a"]
    phrase_words = phrase.capitalize.split(" ")

    index = 1
    while index < phrase_words.length
        if !little_words.include?(phrase_words[index])
            phrase_words[index].capitalize!
        end
        index += 1
    end

    return phrase_words.join(" ")
end