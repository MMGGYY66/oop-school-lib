require './rental'

class Book
  attr_accessor :title, :author, :rentals, :id

  def initialize(title, author, id = Random.rand(1..100))
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
