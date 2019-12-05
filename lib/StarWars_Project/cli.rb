#cli controler

class StarWarsProject::CLI

  def intro
    StarWarsProject::API.get_films
    movies = StarWarsProject::Movie.all
    binding.pry

    menu
    ending
  end

  def list

  end

  def details

  end
# add a lits method for move.all
#add detial method to show the details
  def menu
    input = nil
    while input != "exit"
      puts "Please chose an option you want to know more about and when your done just type exit."
      input = gets.strip
      case input
      when "People"
        puts "You want to know more about People? Cool lets do it!"
        #StarWarsProject::API.people_in_starwars
        puts "chose an option you would like to know more about and if you want to go back just type back."
          input_peopel = nil
            while input_peopel != "back"
              input_peopel = gets.strip
              case input_peopel
              when "results"
                puts "nice job"
            end
            puts "when you done reading just go back."
          end

      end
    end
  end

  def ending
    puts "May the force be with you!"
  end

end
