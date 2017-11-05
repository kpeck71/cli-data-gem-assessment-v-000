class AstoriaNews::NewsScraper

  attr_accessor :title

  def self.scrape
    all = []
    all << self.scrape_arts
    #all << self.scrape_biz
    #all << self.scrape_food
  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("http://qns.com/news/arts-entertainment/"))
    news = self.new
    news.title = "Title here"
    #news.title = doc.search(".entry-post-info").text
    #news.short_description = doc.search(".article-header.article-body").text.strip
    news
  end

  def scrape_biz

  end

  def scrape_food
  end

end
