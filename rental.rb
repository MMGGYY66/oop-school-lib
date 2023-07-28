class Rental
  attr_accessor :date, :book, :person
  attr_reader :rentals

  def initialize(date, person, book)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end
end
