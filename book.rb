class Book
    attr_accessor :title, :word_count
    @@all = []
    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        Book.all << self
    end

    def self.all
        @@all
    end

    def authors
        BookAuthor.all.select {|book_auth| book_auth.book == self}
    end
end
