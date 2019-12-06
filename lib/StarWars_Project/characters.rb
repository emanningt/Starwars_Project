class StarWarsProject::Characters


  attr_accessor :character_name

  @@all = []

  def self.new_from_json(char_info)
    self.new(
      char_info["name"],
      char_info["homeworld"],
      char_info["gender"],
      char_info["birth_year"],
      char_info["hair_color"],
      char_info["skin_color"],
      char_info["height"]
    )
  end

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

  def gender
    @gender
  end

  def homeworld
    @homeworld
  end

  def birth_year
    @birth_year
  end

  def self.find(char)
    self.all[char-1]
  end

  def hair_color
    @hair_color
  end

  def skin_color
    @skin_color
  end

  def height
    @height
  end



#binding.pry
end
