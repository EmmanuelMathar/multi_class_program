class LiveDiary
    attr_accessor :title, :content
    def initialize(title, content)
        @title = title
        @content = content
    
    end

    def count_words
        #count words in content
        count = @content.count(" ")
        return count
    end

    
end