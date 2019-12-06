class StarWarsProject::API


  attr_accessor :character_hash, :characters


  def self.character_list
    characters = RestClient.get('https://swapi.co/api/people/')
    @character_hash = JSON.parse(characters)
    @character_hash["results"].each do |chars|
      #self is the class
        self.new_from_json(chars)
          #binding.pry
    end
  end

  def self.new_from_json(char_info)
    StarWarsProject::Characters.new(
      char_info["name"],
      char_info["homeworld"],
      char_info["gender"],
      char_info["birth_year"],
      char_info["hair_color"],
      char_info["skin_color"],
      char_info["height"]
    )
  end
end



#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
