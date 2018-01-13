#The Controller, user interactions
class Blizzard::CLI

  def call
    puts "Blizzard's Games:"
    list_games
    menu
  end

  def list_games
    puts <<~DOC
      1. Overwatch
      2. Hearthstone
      3. World of Warcraft
      4. Heroes of the Storm
      5. Starcraft II
      6. Diablo III
    DOC
  end

  def menu
    puts "Enter the number of the game you'd like to know about:"
    input = gets.strip
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
    end



  end

end
