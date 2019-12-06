#cli controler

class StarWarsProject::CLI

  def intro
    welcoming
    StarWarsProject::API.character_list
    #binding.pry
    menu
  ending
  end

  def menu
    input = nil
    puts "Characters List:"
    list_of_characters
  end

  def list_of_characters
    StarWarsProject::Characters.all.each.with_index(1) do |char, index|
      puts "#{index}. #{char.character_name}"
    end
  end

  def ending
    puts "May the force be with you!"
  end

  def welcoming
    puts "Hello! What is your name?"
    name = gets.chomp()
    puts ("Hello " + name + ", are you ready to learn more about starwars?" )
    puts "Well you're in the right place thats for that!"
  end

end
