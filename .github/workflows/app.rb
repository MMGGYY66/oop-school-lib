# Create a app.rb file that will serve as your console app entry-point
# This file will be executed when you run the app
# It should contain the following code:

require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

class App
  def initialize
    puts 'Welcome to School Library App!'
    @books = []
    @people = []
    @rentals = []
  end
  
  # create a method to show List all books
    def list_books
        @books.each do |book|
            puts "Title: #{book.title}, Author: #{book.author}"
        end
    end
