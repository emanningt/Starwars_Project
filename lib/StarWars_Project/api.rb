class StarWarsProject::API


  def self.get_films
    #access key though hash["key"]
    responce = RestClient.get("https://swapi.co/api/films/")
    parsed_response= JSON.parse(responce)
    films = parsed_response["results"]
    films.each do |film|
      #binding.pry
      title = film["title"]
      opening_crwal = film["opening_crwal"]
      director = film["director"]

      #go get other atribues (opening_crwal, director, release_date)
      #instence though film to get attributes
      #make new film instensse though attributes
      StarWarsProject::Movie.new(title)

    end
  end



end

#people - "https://swapi.co/api/people/"
#planets - "https://swapi.co/api/planets/"
#films - "https://swapi.co/api/films/"
#species - "https://swapi.co/api/species/"
#vehicles -"https://swapi.co/api/vehicles/"
#starships - "https://swapi.co/api/starships/"
