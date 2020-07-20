require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'


s_collins = Author.new("Suzanne Collins")
f_dostoyevsky = Author.new("Fyodor Dostoyevsky")
j_steinbeck = Author.new("John Steinbeck")

hunger_games = Book.new("The Hunger Games", 50000)
the_idiot = Book.new("The Idiot", 100000)
crime_and_punishment = Book.new("Crime and Punishment", 90000)
grapes_of_wrath = Book.new("The Grapes of Wrath", 75000)

book_auth1 = BookAuthor.new(hunger_games, s_collins)
book_auth2 = BookAuthor.new(hunger_games, f_dostoyevsky)
book_auth3 = BookAuthor.new(the_idiot, f_dostoyevsky)
book_auth4 = BookAuthor.new(crime_and_punishment, f_dostoyevsky)
book_auth5 = BookAuthor.new(crime_and_punishment, j_steinbeck)
book_auth6 = BookAuthor.new(grapes_of_wrath, j_steinbeck)
book_auth7 = BookAuthor.new(grapes_of_wrath, s_collins)



binding.pry



