class Newbie::Scraper

  attr_accessor :title, :short_des, :date, :url

  def initialize (url)
    @url = url
  end

  def scrape_episode
    @doc = Nokogiri::HTML(open(@url))
    @doc.search("section").each do |ep|

      @doc.search("section.p").text
      @doc.search("h4.p").text
      #look at worlds best restaurants for format ideas
    end
  end

  def self.scrape_episodes
    #i have an episode, and an episode has properties
    #an episode as an object
    @doc = Nokogiri::HTML(open("https://www.codenewbie.org/podcast"))
    @doc.search("article").each do |eps|
      episode = Newbie::Episode.new
      episode.title = eps.search("a h3").text
      episode.short_des = eps.search(".small-12 medium-8 large-12 columns.p").text
      episode.url = eps.search("..").attr("href")
      episode.date = eps.search(".subtitle").text

      episode.save
    end
  end
  # attr_accessor :title, :url, :date, :short_des
  #
  # def self.scrape
  #   all = []
  #   all << self.scrape_pods
  #   #all << self.scrape_biz
  #   #all << self.scrape_food
  # end
  #
  # def self.scrape_pods
  #   doc = Nokogiri::HTML(open("https://www.codenewbie.org/podcast"))
  #
  #   podcasts = self.new
  #   #doc.search(".recipe-results.recipe-results-titles.h3").text
  #   css = doc.search("article")
  #   # pocasts.title = css[0]
  #   # podcasts.date = css[1]
  #   # podcasts.short_sec = css[3]
  #
  #   css.each do |pod|
  #     podcasts.title = pod.search("a h3").text,
  #     podcasts.date = pod.search("span.subtitle").text,
  #     podcasts.short_des = pod.search("div.small-12.medium-8.large-12.columns p").text
  #     podcasts.url = pod.search("div.small-12.medium-8.large-12.columns a").attribute("href").value
  #   end
  #
  #
  # end

end
