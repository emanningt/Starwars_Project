class StarWarsProject::API


  attr_accessor :character_hash, :characters


  def self.character_list
    characters = RestClient.get('https://swapi.co/api/people/')
    @character_hash = JSON.parse(characters)
    @character_hash["results"].each do |chars|
          StarWarsProject::Characters.new_from_json(chars)
          #binding.pry
    end
  end
end



#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
