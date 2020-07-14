class Poem

    attr_accessor :name #:author, :lines

    @@all = []

    def initialize(lines) #names, author
        # @name = name
        # @author = author
        @lines = lines
        @@all << self
    end

    def self.all
        @@all
    end


end