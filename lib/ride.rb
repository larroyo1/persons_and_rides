class Ride
  attr_reader :name, :cost, :intensity, :passengers
  def initialize(name, cost, intensity, passengers)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end

end

#rspec spec/ride_spec.rb
