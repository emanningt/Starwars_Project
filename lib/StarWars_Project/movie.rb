class StarWarsProject::Movie

attr_accessor :title

@@all = []

def initialize(title)
  @title = title
  self.save
  #add other atrubutes
end

def self.all
  @@all
end

def save
  @@all << self
end

end
