require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/car'
require './lib/person'
require 'pry'

class CarTest < Minitest::Test

  def test_it_exists
    car = Car.new
    assert_instance_of Car, car
  end

  def test_it_can_hold_passengers
    car = Car.new
    assert_equal [], car.passengers
  end

  def test_it_can_add_passengers
    car = Car.new
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    expected = [charlie]

    assert_equal expected, car.add_passenger(charlie)
  end

  def test_it_has_passengers
    car = Car.new
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12})
    car.add_passenger(charlie)
    car.add_passenger(jude)
    car.add_passenger(taylor)
    expected = [charlie, jude, taylor]

    assert_equal expected, car.passengers
  end

  def test_it_knows_how_many_adults
    car = Car.new
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12})
    car.add_passenger(charlie)
    car.add_passenger(jude)
    car.add_passenger(taylor)

    assert_equal 2, car.num_adults  
  end

end
