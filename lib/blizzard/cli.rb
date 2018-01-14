#The Controller, user interactions
class Blizzard::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "Blizzard's Games:"
    @games = Blizzard::Game.all
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the game you'd like to know about OR type list to see the games again OR type exit to quit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "You've chosen Overwatch"
      when "2"
        puts "You've chosen Hearthstone"
      when "3"
        puts "You've chosen World of Warcraft"
      when "4"
        puts "You've chosen Heroes of the Storm"
      when "5"
        puts "You've chosen Starcraft II"
      when "6"
        puts "You've chosen Diablo III"
      when "list"
        list_games
      else
        puts "Not an option, type list to go back to game list and choose again"
      end
    end
  end

  def goodbye
    puts "Please come again!"
  end

end
