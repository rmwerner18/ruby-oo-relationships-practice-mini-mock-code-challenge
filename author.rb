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
        Book.all.select {|book| book.author == self}
    end

    def write_book(title, word_count)
        book = Book.new(self, title, word_count)
    end

    def total_words
        counts = self.books.map {|book| book.word_count}
        counts.sum
    end

    def self.most_words
        all_totals = Author.all.map {|author| author.total_words}
        max = all_totals.max {|count1, count2| count1 <=> count2}
        Author.all.find {|author| author.total_words == max}
    end
end
