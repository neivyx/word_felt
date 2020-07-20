class Author

    attr_accessor :title, :author

    @@all = []

    def initialize(title,author,lines)
        # @name = name
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

    def self.clear
        @@all 
    end


end



