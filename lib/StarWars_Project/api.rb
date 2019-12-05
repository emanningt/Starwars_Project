class StarWarsProject::API


  def self.get_films
    responce = RestClient.get("https://swapi.co/api/films/")
    films = JSON.parse(responce)
    films.each do |film|
      #instence though films to get attributes
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
