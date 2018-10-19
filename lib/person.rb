require 'pry'

class Person
  attr_reader :name, :age

  def initialize(attributes)
    @name = attributes["name"]
    @age = attributes["age"]
  end

  def adult?
    if @age >= 18
      true
    end
  end

end
