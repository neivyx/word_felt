class Poem

    attr_accessor :name, :author

    @@all = []

    def initialize(name, author)
        @name = name
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    puts "hello3"
end