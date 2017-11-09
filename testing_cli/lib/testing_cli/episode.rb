class TestingCli::Episode
  attr_accessor :title, :short_des, :url, :date, :content
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def content
    @content ||= TestingCli::Scraper.new(url).scrape_details
  end

  # def open_to_listen
  #   Launchy.open("https://www.codenewbie.org#{url}'")
  # end
end
