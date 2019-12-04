class StarWarsProject::Categories

  def self.new_cats_from_api(cats)
    puts cats[0].capitalize
  end

  def self.gets_people_from_starwars(peps)
    puts peps
  end

  def self.gets_planets_from_starwars(plan)
    puts plan
  end

  def self.gets_films_from_starwars(film)
    puts film
  end

  def self.gets_species_from_starwars(spec)
    puts spec
  end

  def self.gets_vehicles_from_starwars(veh)
    puts veh
  end

  def self.gets_starships_from_starwars(star)
    puts star
  end

end
