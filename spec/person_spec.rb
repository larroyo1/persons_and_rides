require "rspec"
require "./lib/person"

RSpec.describe Person do
  it "has a name" do
    person = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    expect(person.name).to eq("Aurelia")
  end

  it "has an age" do
    person = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    expect(person.age).to eq(18)
  end

  it "gets intense" do
    person = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    expect(person.intensity_max).to eq(5)
  end

  it "is an adult" do
    person = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    expect(person.adult?).to be true
  end

  it "gets more intense!" do
    person = Person.new({name: "Aurelia", age: 18, intensity_max: 5})
    expect(person.intensity_max).to eq(5)
    person.pep_talk
    expect(person.intensity_max).to eq(6)
  end
end
