require 'pry'
require_relative './book'
require_relative './author'

s_collins = Author.new("Suzanne Collins")
f_dostoyevsky = Author.new("Fyodor Dostoyevsky")
j_steinbeck = Author.new("John Steinbeck")

hunger_games = Book.new(s_collins, "The Hunger Games", 50000)
the_idiot = Book.new(f_dostoyevsky, "The Idiot", 100000)
crime_and_punishment = Book.new(f_dostoyevsky, "Crime and Punishment", 90000)
grapes_of_wrath = Book.new(j_steinbeck, "The Grapes of Wrath", 75000)


binding.pry



