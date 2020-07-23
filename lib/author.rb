class Author

    attr_accessor :title, :author

    @@all = []

    def initialize(title,author,lines)
        @title = title
        @author = author
        @lines = lines
        # @poems = []
        @@all << self
    end

    def lines
        @lines.join("\n")
    end

    def self.all
        @@all
    end

    def self.clear
        @@all 
    end

    # def add_poems(poem_name)
    #     new_poem = Poem.new(poem_name, self)
    #     @poems << new_poem
    #     new_poem
    # end



    def new_poem(title, author)
        Poem.new(title, self, lines)

    end

    def poems
        Poem.all.select { |poem| poem.author == self}
    end

    def lines_map
        poems.map(&:@lines)
    end

binding.pry
end







