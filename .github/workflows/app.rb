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
            puts "Title: \"#{book.title}\", Author: #{book.author}"
        end
    end

    # create a method to show List all people
    def list_people
        @people.each do |person|
            puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, AGE: #{person.age}"        end
    end

    # create a method to create a person
    def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        person_type = gets.chomp.to_i
        case person_type
        when 1
            print 'Age: '
            person_age = gets.chomp.to_i
            print 'Name: '
            person_name = gets.chomp.to_s
            print 'Has parent permission? [Y/N]: '
            person_permission = gets.chomp.to_s.capitalize
            @people << if person_permission == 'N'
                        Student.new(person_age, classroom: nil, name: person_name, parent_permission: false)
                        else
                        Student.new(person_age, classroom: nil, name: person_name, parent_permission: true)
                        end
            puts 'Student created successfully'
        when 2
            print 'Age: '
            person_age = gets.chomp.to_i
            print 'Name: '
            person_name = gets.chomp.to_s.capitalize
            print 'Specialization: '
            person_specialization = gets.chomp.to_s.capitalize
            @people << Teacher.new(person_age, person_specialization, name: person_name)
            puts 'Teacher created successfully'
        else
            puts 'Error: Enter a valid number'
            create_person
        end
    end
    
     # create a method to create a book
     def create_book
        print 'Title: '
        book_title = gets.chomp.to_s.capitalize
        print 'Author: '
        book_author = gets.chomp.to_s.capitalize
        @books << Book.new(book_title, book_author)
        puts 'Book created succesfully'
    end
    
end

