class TestingCli::Episode
  attr_accessor :title, :short_des, :url, :date
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(title=nil, short_des=nil, url=nil, date=nil)
    @title = title
    @short_des = short_des
    @url = url
    @date = date
    @@all << self
  end
end
