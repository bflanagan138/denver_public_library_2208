class Library

    attr_reader :name, 
                :books, 
                :authors
    attr_accessor :add_author,
                :add_book

    def initialize(name)
        @name = name
        @books = []
        @authors = []
    end

    def add_author(author)
        authors << author
    end

    def add_book(book)
        books << book
    end
end