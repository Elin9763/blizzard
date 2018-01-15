class Blizzard::Game
  attr_accessor :name, :price, :category, :url

  def self.all
    #Returns instances of games
    #puts <<~DOC
      #1. Overwatch
      #2. Hearthstone
      #3. World of Warcraft
      #4. Heroes of the Storm
      #5. Starcraft II
      #6. Diablo III
    #DOC

    game_1 = self.new
    game_1.name = "Overwatch"
    game_1.price = "$59.99"
    game_1.category = "Team-Based Shooter"
    game_1.url = "https://us.shop.battle.net/en-us/product/overwatch/"

    game_2 = self.new
    game_2.name = "Hearthstone"
    game_2.price = "Free to Play"
    game_2.category = "Strategy Card Game"
    game_2.url = "https://us.shop.battle.net/en-us/product/hearthstone-heroes-of-warcraft"

    game_3 = self.new
    game_3.name = "World of Warcraft"
    game_3.price = "$50.00"
    game_3.category = "Massively Multiplayer RPG"
    game_3.url = "https://us.shop.battle.net/en-us/product/world-of-warcraft-legion"

    game_4 = self.new
    game_4.name = "Heroes of the Storm"
    game_4.price = "Free to Play"
    game_4.category = "MOBA"
    game_4.url = "https://us.shop.battle.net/en-us/product/heroes-of-the-storm"

    game_5 = self.new
    game_5.name = "Starcraft II"
    game_5.price = "$39.99"
    game_5.category = "Real-Time Strategy"
    game_5.url = "https://us.shop.battle.net/en-us/product/starcraft-ii-campaign-collection"

    game_6 = self.new
    game_6.name = "Diablo III"
    game_6.price = "$29.99"
    game_6.category = "Action RPG"
    game_6.url = "https://us.shop.battle.net/en-us/product/diablo-iii-battle-chest"

    [game_1, game_2, game_3, game_4, game_5, game_6]
  end

end
