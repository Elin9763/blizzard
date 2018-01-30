#The Controller, user interactions

class Blizzard::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts " _______________________________________________________________________________________________________________"
    puts "|                                             Blizzard Games:                                                   |"
    puts "|                                                                                                               |"
    puts "|                                                                                                               |"
    puts "|                                                                                                               |"
    puts "|                                                                                                               |"
    @game = Blizzard::Game.all
    @game.each.with_index(1) do |game, i|
      puts "|#{i}. #{game.name}"
    puts "|---------------------------------------------------------------------------------------------------------------|"
    end
    puts " _______________________________________________________________________________________________________________"
  end

  def menu
    puts "Enter the number of the game you'd like to know about OR type list to see the games again OR type exit to quit:"
    input = nil
    while input != "exit"
    input = gets.strip

      if input.to_i > 0
        game = @game[input.to_i - 1]
        puts "#{game.name} - #{game.publisher} - #{game.release_date} - #{game.price}"
      elsif input == "list"
        list_games
      elsif input == "exit"
      else
        puts "Not an option, please choose again"
      end
    end
  end


  def goodbye
    puts "Please come again!"
  end

end
