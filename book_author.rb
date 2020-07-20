class BookAuthor
    @@all = []
    attr_accessor :book, :author
    def initialize(book, author)
        @book = book
        @author = author
        BookAuthor.all << self
    end

    def self.all
        @@all
    end
end