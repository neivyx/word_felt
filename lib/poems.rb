class Poem

    attr_accessor :name,:author

    @@all = []

    def initialize(author:, title:,lines:)
        @name = name
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