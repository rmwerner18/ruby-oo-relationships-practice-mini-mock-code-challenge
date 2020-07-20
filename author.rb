class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select {|book_auth| book_auth.author == self}
    end

    def books
        book_authors.map {|book_auth| book_auth.book}
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        BookAuthor.new(book, self)
    end

    def total_words
        self.books.reduce(0) {|word_total, book| word_total + book.word_count}
    end

    def self.most_words
        Author.all.max_by {|author| author.total_words}
    end
end
