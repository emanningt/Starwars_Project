class StarWarsProject::API

  def self.get_categories
   cats = RestClient.get('https://swapi.co/api/')
   @cats = JSON.parse(cats)
   @cats.each do |cats|
     StarWarsProject::Categories.new_cats_from_api(cats)
   end
  end

  def self.people_in_starwars
    peps = RestClient.get("https://swapi.co/api/people/")
    @peps = JSON.parse(peps)
    @peps.each do |peps|
      StarWarsProject::Categories.gets_people_from_starwars(peps)
    end
  end

  def self.planets_in_starwars
    plan = RestClient.get("https://swapi.co/api/planets/")
    @plan = JSON.parse(plan)
    @plan.each do |plan|
      StarWarsProject::Categories.gets_planets_from_starwars(plan)
 end
end
  def self.films_in_starwars
    film = RestClient.get("https://swapi.co/api/films/")
    @film = JSON.parse(film)
    @film.each do |film|
      StarWarsProject::Categories.gets_films_from_starwars(film)
    end
  end

  def self.species_in_starwars
    spec = RestClient.get("https://swapi.co/api/species/")
    @spec = JSON.parse(spec)
    @spec.each do |spec|
      StarWarsProject::Categories.gets_species_from_starwars(spec)
    end
  end

  def self.vehicles_in_starwars
    veh = RestClient.get("https://swapi.co/api/vehicles/")
    @veh = JSON.parse(veh)
    @veh.each do |veh|
      StarWarsProject::Categories.gets_vehicles_from_starwars(veh)
    end
  end

  def self.starships_in_starwars
    star = RestClient.get("https://swapi.co/api/starships/")
    @star = JSON.parse(star)
    @star.each do |star|
      StarWarsProject::Categories.gets_starships_from_starwars(star)
    end
  end

end

#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
