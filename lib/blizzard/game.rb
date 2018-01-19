class Blizzard::Game
  attr_accessor :name, :publisher, :release_date, :price

  def self.all
    self.scrape_games
  end

  def self.scrape_games
    games = []
    games << self.scrape_overwatch
    games
  end

  def self.scrape_overwatch
    doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/overwatch-game-of-the-year-edition-windows/5891900.p?skuId=5891900"))

    game = self.new
    game.name = doc.search("h1.type-subhead-alt-regular").text
    game.publisher = doc.search("span#publisher-value").text
    game.release_date = doc.search("span#release-date-value").text
    game.price = doc.search("div.pb-hero-price.pb-purchase-price").text
    game

  end

    #game_1 = self.new
    #game_1.name = "Overwatch"
    #game_1.price = "$59.99"
    #game_1.category = "Team Based Shooter"
    #game_1.url = "https://us.shop.battle.net/en-us/product/overwatch"

    #game_2 = self.new
    #game_2.name = "Hearthstone"
    #game_2.price = "Free to Play"
    #game_2.category = "Strategy Card Game"
    #game_2.url = "https://us.shop.battle.net/en-us/product/hearthstone-heroes-of-warcraft"

    #game_3 = self.new
    #game_3.name = "World of Warcraft"
    #game_3.price = "$50.00"
    #game_3.category = "Massively Multiplayer RPG"
    #game_3.url = "https://us.shop.battle.net/en-us/product/world-of-warcraft-legion"

    #game_4 = self.new
    #game_4.name = "Heroes of the Storm"
    #game_4.price = "Free to Play"
    #game_4.category = "MOBA"
    #game_4.url = "https://us.shop.battle.net/en-us/product/heroes-of-the-storm"

    #game_5 = self.new
    #game_5.name = "Starcraft II"
    #game_5.price = "$39.99"
    #game_5.category = "Real-Time Strategy"
    #game_5.url = "https://us.shop.battle.net/en-us/product/starcraft-ii-campaign-collection"

    #game_6 = self.new
    #game_6.name = "Diablo III"
    #game_6.price = "$29.99"
    #game_6.category = "Action RPG"
    #game_6.url = "https://us.shop.battle.net/en-us/product/diablo-iii-battle-chest"

end
