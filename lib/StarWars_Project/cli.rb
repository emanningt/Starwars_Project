#cli controler

class StarWarsProject::CLI

  def intro
    welcoming
    StarWarsProject::API.character_list
    #binding.pry
    menu

  end

  def menu
    input = nil
    puts "Characters List:"
    list_of_characters
    input = gets.strip.downcase
    if input == "exit"
      ending
    else
      num = input.to_i
      if num != 0
        char_input = StarWarsProject::Characters.find(num)
        character_details(char_input)
        puts "would you like to see informatoin fror another character?"
        answer = gets.strip.downcase
        if answer == "yes" || answer == "y"
          menu
        else
        ending
      end
      #add ending message 
    end
      #binding.pry
    end
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

  def character_details(char_input)
    puts "#{char_input.character_name}"
    puts "birth_year: #{char_input.birth_year}"
    puts "homeworld: #{char_input.homeworld}"
    puts "gender: #{char_input.gender}"
    puts "height: #{char_input.height}"
    puts "hair color: #{char_input.hair_color}"
    puts "skin_color: #{char_input.skin_color}"
  end


end
