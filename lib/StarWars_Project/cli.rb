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
    puts "-------------------------------------------"
    puts "Characters List: Choose by typing the number"
    puts "-------------------------------------------"
    list_of_characters
    puts "-------------------------------------------"
    puts "Type exit when you are done."
    input = gets.strip.downcase
    if input == "exit"
      ending
    else
      num = input.to_i
      if num != 0
        char_input = StarWarsProject::Characters.find(num)
        character_details(char_input)
        puts "Would you like to see information on another character?"
        answer = gets.strip.downcase
        if answer == "yes" || answer == "y"
          menu
        elsif answer == "no" || answer == "n"
        puts "------------------------------------------"
        puts "Well I hope you learned a thing or two!"
        ending
        puts "------------------------------------------"
        else
          puts "-----------------------------------------------------------------------------"
          puts "I'm afraid I am not familiar with that planet's language, taking you back to the menu."
          puts "-----------------------------------------------------------------------------"
          menu
      end

    elsif
      puts "The Force is not strong with this one.. Please start over."
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
    puts "May the Force be with you!"
  end

  def welcoming
    puts "Hello! What is your name?"
    name = gets.chomp()
    puts ("Hello " + name + ", are you ready to learn more about Star Wars?" )
    puts "A long time ago.. in a galaxy far far away... "
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
