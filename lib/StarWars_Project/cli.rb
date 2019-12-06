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
    StarWarsProject::Movie.all.each.with_index(1) do |movie, i|
     puts "#{i}. #{movie.title}."
   end
  end

  def details

  end
# add a lits method for move.all
#add detial method to show the details
  

      end
    end
  end

  def ending
    puts "May the force be with you!"
  end

end
