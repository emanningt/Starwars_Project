class StarWarsProject::API


  def self.get_films
    #note: access key though hash["key"]
    responce = RestClient.get("https://swapi.co/api/films/")
    parsed_response= JSON.parse(responce)
    films = parsed_response["results"]
    films.each do |film|
      #binding.pry
      title = film["title"]
      opening_crawl = film["opening_crawl"]
      director = film["director"]
      release_date = film["release_date"]
      #binding.pry

      #instence though film to get attributes
      #make new film instence though attributes
      StarWarsProject::Movie.new(title, opening_crawl, director, release_date)
      

    end
  end




end

#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
