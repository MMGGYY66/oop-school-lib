require_relative 'name_able'
require_relative 'trimmer_decorator '
require_relative 'capital_decorator'

class Person < Nameable
  attr_accessor :name, :age, :id
  attr_reader :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # a method correct_name implemented to simply return the name attribute.
  def correct_name
    @name
  end

  def can_use_services?
    @parent_permission || of_age?
  end

  private

  def of_age?
    @age >= 18
  end
end

# See your decorators in action

# Try the following code and check if you managed to decorate your person:

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
