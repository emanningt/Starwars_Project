class StarWarsProject::API


  def self.films_in_starwars
    film = RestClient.get("https://swapi.co/api/films/")
    @film = JSON.parse(film)
    @film.each do |film|
      #iterate though fils to get attributes
      #make new film instensse though attributes
    end
  end


end

#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
