class Blizzard::Game
  attr_accessor :name, :publisher, :release_date, :price

  def self.all
    self.scrape_game
  end

  def self.scrape_game
    game = []
    game << self.scrape_any_game("https://www.bestbuy.com/site/overwatch-game-of-the-year-edition-windows/5891900.p?skuId=5891900")
    game << self.scrape_any_game("https://www.bestbuy.com/site/diablo-iii-battle-chest-macwindows-digital-download/5823033.p?skuId=5823033")
    game << self.scrape_any_game("https://www.bestbuy.com/site/world-of-warcraft-legion-windows/4712900.p?skuId=4712900")
    game << self.scrape_any_game("https://www.bestbuy.com/site/heroes-of-the-storm-starter-pack-windowsmac/8012069.p?skuId=8012069")
  end

  def self.scrape_any_game(game_url)
    doc = Nokogiri::HTML(open(game_url))

    game = self.new
    game.name = doc.search("h1.type-subhead-alt-regular").text
    game.publisher = doc.search("span#publisher-value").text
    game.release_date = doc.search("span#release-date-value").text
    game.price = doc.search("div.pb-hero-price.pb-purchase-price").text

    game
  end

end
