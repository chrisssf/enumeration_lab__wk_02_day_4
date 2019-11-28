class StarSystem
  attr_reader :name, :planets

    def initialize(name, planets)
      @name = name
      @planets = planets
    end

  def planet_names
    return @planets.map { |planet| planet.name}
    # planet_names = []
    # @planets.each { |planet| planet_names << planet.name }
    # return planet_names
  end

  def get_planet_by_name(planet_name)

    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
  end


  def get_largest_planet

    planet_size = @planets.map { |planet| planet.diameter}
    # biggest_planet = planet_size.max
    # planet_size = []
    # @planets.each do |planet|
    #   planet_size << planet.diameter
    # end
    planet_size.sort!
    biggest_planet = planet_size[-1]
    @planets.each do |planet|
      if planet.diameter == biggest_planet
        return planet
      end
    end
  end

  def get_smallest_planet
    planet_size = []
    @planets.each do |planet|
      planet_size << planet.diameter
    end
    planet_size.sort!
    smallest_planet = planet_size[0]
    @planets.each do |planet|
      if planet.diameter == smallest_planet
        return planet
      end
    end
  end

  def get_planets_with_no_moons
    planets_with_no_moons = []
    @planets.each do |planet|
      if planet.number_of_moons == 0
        planets_with_no_moons<< planet
      end
    end
    return planets_with_no_moons
  end

  def get_planets_with_more_moons(number_of_moons)
    planets_with_more_moons = []
    @planets.each do |planet|
      if planet.number_of_moons > number_of_moons
        planets_with_more_moons << planet.name
      end
    end
    return planets_with_more_moons
  end

  def get_number_of_planets_closer_than(distance)
    planets_further_away = []
    @planets.each do |planet|
      if planet.distance_from_sun < distance
        planets_further_away << planet
      end
    end
      return planets_further_away.length
  end

  end
