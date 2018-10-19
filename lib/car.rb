require './lib/person'
require 'pry'

class Car

attr_reader :passengers

  def initialize
    @passengers = []
  end

  def add_passenger(name)
    @passengers << name
  end

  def num_adults
    adults = @passengers.group_by do |person|
    person.adult?
    end
    adults.count
  end

end
