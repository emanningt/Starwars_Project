#cli controler

class StarWarsProject::CLI

  def intro
    StarWarsProject::API.get_categories
    menu
    ending
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please chose an option you want to know more about?"
      input = gets.strip
      case input
      when "People"
        puts "you want to know more about People? Cool lets do it!"
        StarWarsProject::API.people_in_starwars
      when "Planets"
        puts "you want to know more about Planets? Cool lets do it!"
        StarWarsProject::API.planets_in_starwars
      when "Films"
        puts "you want to know more about Films? Cool lets do it!"
        StarWarsProject::API.films_in_starwars
      when "Species"
        puts "you want to know more about Species? Cool lets do it!"
        StarWarsProject::API.species_in_starwars
      when "Vehicles"
        puts " Oh you wanto to know more about vehicles well here you go!"
        StarWarsProject::API.vehicles_in_starwars
      when "Starships"
        puts "Cool Starships! You must me well educated to want to know more about them!"
        StarWarsProject::API.starships_in_starwars
      end
    end
  end

  def ending
    puts "May the force be with you!"
  end

end
