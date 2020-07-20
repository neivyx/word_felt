require 'pry'
require 'httparty'

class API
    URL = "https://poetrydb.org/author"

    def get_poems

        response = HTTParty.get(URL + ",linecount/;12").to_a
        response.each do |poem_hash|
            Poem.new(poem_hash['title'],poem_hash['author'],poem_hash['lines'])
        end
# binding.pry
    end

    BASE_URL = "https://poetrydb.org/author"

    def get_author_poems(name,i)

        response = HTTParty.get(BASE_URL + ",linecount/#{name};#{i}/lines,title,author").to_a
        response.each do |poem_hash|
            Author.new(poem_hash['title'],poem_hash['author'],poem_hash['lines'])
        end
# binding.pry
    end
    


end
  

#Structured URL example
    #https://poetrydb.org/author,linecount/poe;14/lines,title,author
     