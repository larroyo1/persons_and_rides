require "rspec"
require "./lib/person"
require "./lib/ride"

RSpec.describe Ride do
  it "has a name" do
    millenium = Ride.new("Millenium Force", 5, 8, [])
    expect(millenium.name).to eq("Millenium Force")
  end

    it "has a price" do
      millenium = Ride.new("Millenium Force", 5, 8, [])
      expect(millenium.cost).to eq(5)
    end

    it "has intensity" do
      millenium = Ride.new("Millenium Force", 5, 8, [])
      expect(millenium.intensity).to eq(8)
    end

    it "has passengers" do
      millenium = Ride.new("Millenium Force", 5, 8, [])
      expect(millenium.passengers).to eq([])
    end

    it "adds passengers" do
      millenium = Ride.new("Millenium Force", 5, 8, [])
      aurelia = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
      taylor = Person.new({name: "Taylor", age: 12, intensity_max: 3})
      lauren = Person.new({name: "Lauren", age: 20, intensity_max: 8})

      millenium.add_passengers(aurelia)
      millenium.add_passengers(taylor)
      millenium.add_passengers(lauren)
      expect(millenium.passengers).to eq([aurelia, taylor, lauren])
    end

    it "has percentage of adults" do
    millenium = Ride.new("Millenium Force", 5, 8, [])
    aurelia = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    taylor = Person.new({name: "Taylor", age: 12, intensity_max: 3})
    lauren = Person.new({name: "Lauren", age: 20, intensity_max: 8})

    millenium.add_passengers(aurelia)
    millenium.add_passengers(taylor)
    millenium.add_passengers(lauren)

    expect(millenium.percentage_adults).to eq(67)
    end
  end
