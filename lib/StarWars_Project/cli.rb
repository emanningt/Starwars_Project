#cli controler

class StarWarsProject::CLI

  def intro
    puts "Hello! What is your name?"
    name = gets.chomp()
    puts ("Hello " + name + ", are you ready to learn more about starwars?" )
    puts "Well you're in the right place thats for sure."
    StarWarsProject::API.character_list
    #binding.pry
    menu
  ending
  end

  def menu
    input = nil

    puts "Characters:"
    list_of_characters
  end

  def list_of_characters
    StarWarsProject::characters.all.each do |char, index|
      puts "#{char} #{index}"
    end
  end

  def ending
    puts "May the force be with you!"
  end

end
