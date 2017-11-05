class AstoriaNews::NewsScraper

  def self.scrape
    all = []
    all << self.scrape_news
    all << self.scrape_food
    all << self.scrape_deals
  end

  def scrape_news
  end

  def scrape_food
  end

  def scrape_deals
  end

end
