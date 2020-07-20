class Poem

    attr_accessor :title, :author

    @@all = []

    def initialize(title,author,lines)
        @title = title
        @author = author
        @lines = lines
        @@all << self
    end

    def lines
        @lines.join("\n")
    end

    def self.all
        @@all
    end


end



