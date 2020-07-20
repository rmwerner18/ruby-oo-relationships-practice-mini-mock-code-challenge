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

    def books
        BookAuthor.all.select {|book_auth| book_auth.author == self}
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        BookAuthor.new(book, self)
    end

    def total_words
        counts = self.books.map {|book_auth| book_auth.book.word_count}
        counts.sum
    end

    def self.most_words
        #currently assumes that only one author has the most words and that it is not a tie
        all_totals = Author.all.map {|author| author.total_words}
        max = all_totals.max {|count1, count2| count1 <=> count2}
        Author.all.find {|author| author.total_words == max}
    end
end
