class StarWarsProject::Characters


  attr_accessor :character_name, :gender, :homeworld, :birth_year, :hair_color, :skin_color, :height

  @@all = []

  def initialize(character_name, homeworld, gender, birth_year, hair_color, skin_color, height)
    @character_name = character_name
    @homeworld = homeworld
    @gender = gender
    @birth_year = birth_year
    @hair_color = hair_color
    @skin_color = skin_color
    @height = height
    @@all << self
  end
#binding.pry

  def self.all
    @@all
  end

  def self.find(char)
    self.all[char-1]
  end

#binding.pry
end
