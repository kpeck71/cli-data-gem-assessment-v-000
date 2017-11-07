class TestingCli::Scraper

attr_accessor :title, :short_des, :date, :url

  def initialize(url=nil)
    @url = url
  end

  def scrape_details
    @doc = Nokogiri::HTML(open(@url))
    @doc.search("section.h4 p").text
      #look at worlds best restaurants for further formatting ideas
  end

  def scrape_episodes
    #i have an episode, and an episode has properties
    #an episode as an object
    @doc = Nokogiri::HTML(open("https://www.codenewbie.org/podcast"))
    @doc.search("article").each do |eps|
      episode = TestingCli::Episode.new
      episode.title = eps.search("a h3").text
      episode.short_des = eps.search(".small-12.medium-8.large-12.columns p").text
      episode.url = eps.search("a").attr("href").value
      episode.date = eps.search(".subtitle").text
      
      episode.save
      episode
    end
  end
end
