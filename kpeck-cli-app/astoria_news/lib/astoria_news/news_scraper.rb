class AstoriaNews::NewsScraper

  attr_accessor :title, :short_description

  def self.scrape
    all = []
    all << self.scrape_news
    #all << self.scrape_food
    #all << self.scrape_deals
  end

  def self.scrape_news
    doc = Nokogiri::HTML(open("http://weheartastoria.com/category/news/"))
binding.pry
    news = self.new
    news.title = doc.search(".article.h2").text.strip
    news.short_description = doc.search(".article-header.article-body").text
    news
  end

  def scrape_food

  end

  def scrape_deals
  end

end
