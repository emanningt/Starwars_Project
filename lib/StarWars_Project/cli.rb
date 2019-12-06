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

    puts "Characters:"
    list_of_characters
    puts " Type the Character you want to know more about."
    puts " Oh and dont forget to type exit at any point to end the program"

    input = gets.strip
    if input == "exit"
      ending
    else



  end

  def list_of_characters
    StarWarsProject::characters.all.each do |char, index|
      puts "#{char} #{index}"
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
