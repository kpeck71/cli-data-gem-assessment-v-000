class TestingCli::CLI
  def call
    puts "Testing 1-2-3"
    TestingCli::Scraper.new.scrape_episodes
  end
end
