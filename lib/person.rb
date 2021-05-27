class Person
  attr_reader :name, :age, :intensity_max
  def initialize(name:, age:, intensity_max:)
    @name = name
    @age = age
    @intensity_max = intensity_max
  end

  def adult?
    @age >= 18
  end

  def pep_talk
    @intensity_max += 1
  end

end


#rspec spec/person_spec.rb
