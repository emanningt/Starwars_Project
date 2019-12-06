class StarWarsProject::Movie

attr_accessor :title, :opening_crawl, :director, :release_date

@@all = []

  def self.new_info(movie_info)
    self.new(
      movie_info["title"]
    )

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
