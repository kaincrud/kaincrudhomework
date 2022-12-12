class Country
  attr_reader :name, :airports

  def initialize name
    @name = name
    @airports = []
  end

  def add_airport airport
    @airports << airport
  end
end

class Airport
  attr_reader :name, :planes

  def initialize name
    @name = name
    @planes = []
  end

  def add_plane plane
    @planes << plane
  end
end

class Plane
  attr_reader :model

  def initialize model
    @model = model
  end
end

airports = []

country = Country.new "Ukraine"

airport1 = Airport.new "Zhulyanu"
airport2 = Airport.new "Boryspil"

country.add_airport airport1

airports << airport1
airports << airport2

plane1_1 = Plane.new "A-320"
plane1_2 = Plane.new "Boeing-777"
plane1_3 = Plane.new "IL-76"

airport1.add_plane plane1_1
airport1.add_plane plane1_2
airport1.add_plane plane1_3

plane2_1 = Plane.new "Bayraktar"
plane2_2 = Plane.new "Shark"
plane2_3 = Plane.new "PeaceDuke"

airport2.add_plane plane2_1
airport2.add_plane plane2_2
airport2.add_plane plane2_3

airports.each do |airport|
  puts "#{airport.name}"

  puts "Planes in this airport:"
  airport.planes.each do |plane|
    puts "#{plane.model}"
  end

  puts "======================"
end