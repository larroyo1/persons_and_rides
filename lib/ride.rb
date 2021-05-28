require "./lib/person"

class Ride
  attr_reader :name, :cost, :intensity, :passengers
  def initialize(name, cost, intensity, passengers)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end

  def add_passengers(person)
    @passengers << person
  end

  def percentage_adults
    seniors = @passengers.find_all do |person|
      person.adult?
    end
    (seniors.count.to_f / @passengers.count.to_f * 100).round
  end

end

#rspec spec/ride_spec.rb
