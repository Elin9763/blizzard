#The Controller, user interactions
class Blizzard::CLI

  def call
    system("clear")
    list_games
    menu
    goodbye
  end

  def list_games
    puts "Blizzard's Games:"
    @games = Blizzard::Game.all
    @games.each.with_index(1) do |games, i|
      puts "#{i}. #{games.name} - #{games.price} - #{games.category}"
    end
  end

  def menu
    puts "Enter the number of the game you'd like to know about OR type list to see the games again OR type exit to quit:"
    input = nil
    while input != "exit"

      input = gets.strip

      if input.to_i > 0
        puts @games[input.to_i - 1]
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
