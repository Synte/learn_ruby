class Book
    def initialize
        @title = ""
    end

    def title
        return @title
    end

    def title=(title)
        format_title title
        return @title
    end

    private

    def format_title title
        exclude = ["and", "in", "of", "an", "the", "a"]
        words = title.split(" ")
        
        words.each_with_index do |word, index|
            if exclude.include?(word) == true && index != 0
                words[index].downcase!
            else
                words[index].capitalize!
            end
        end

        @title = words.join(" ")
    end
end
