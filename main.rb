# Create a main.rb file
# requires the other files
require_relative 'app'

# should do the following:
#
#     Present the user with a list of options to perform.
#     Lets users choose an option.
#     If needed, ask for parameters for the option.
#     Have a way to quit the app.
# Create a menu
def menu
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

# Create a method to handle the menu
def handle_menu(app)
  option = gets.chomp.to_i
  case option
  when 1
    app.list_books
  when 2
    app.list_people
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.list_rentals
  else
    puts 'Error: Invalid number, try again'
  end
end

# Create a main method to run the app
def main
  app = App.new
  loop do
    menu
    handle_menu(app)
  end
end

# Call the main method to run the app
main
