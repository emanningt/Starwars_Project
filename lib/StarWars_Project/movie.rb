class StarWarsProject::Movie

attr_accessor :title, :opening_crawl, :director, :release_date

@@all = []

def initialize(title, opening_crawl, director, release_date)
  @title = title
  @opening_crawl = opening_crawl
  @director = director
  @release_date = release_date
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
