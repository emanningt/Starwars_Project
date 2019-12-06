class StarWarsProject::Characters

  attr_accessor :character_hash, :characters

  @@all = []

  def self.new_from_json(char_info)
    self.new(
      char_info["name"],
      char_info["homeworld"],
      char_info["gender"],
      char_info["birth_year"]
    )
  end

  def initialize(character_name, homeworld, gender, birth_year)
    @character_name = character_name
    @homeworld = homeworld
    @gender = gender
    @birth_year = birth_year
    @@all << self
  end


end 
