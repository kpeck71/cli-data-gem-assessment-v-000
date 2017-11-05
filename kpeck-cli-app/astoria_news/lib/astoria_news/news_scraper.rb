class AstoriaNews::NewsScraper

  attr_accessor :title, :url

  def self.scrape
    all = []
    all << self.scrape_arts
    #all << self.scrape_biz
    #all << self.scrape_food
  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("http://www.ny1.com/nyc/queens"))
    news = self.new
    #doc.search(".recipe-results.recipe-results-titles.h3").text
    news.title = "Scraper work in progress. Title here."
    news.url = "http://google.com"
    news
  end

  def scrape_biz

  end

  def scrape_food
  end

end
