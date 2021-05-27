require "rspec"
require "./lib/person"
require "./lib/ride"

RSpec.describe Ride do
  it "has a name" do
    ride = Ride.new("Millenium Force", 5, 8, [])
    expect(ride.name).to eq("Millenium Force")
  end

    it "has a price" do
      ride = Ride.new("Millenium Force", 5, 8, [])
      expect(ride.cost).to eq(5)
    end

    it "has intensity" do
      ride = Ride.new("Millenium Force", 5, 8, [])
      expect(ride.intensity).to eq(8)
    end

    it "has passengers" do
      ride = Ride.new("Millenium Force", 5, 8, [])
      expect(ride.passengers).to eq([])
    end
  end
