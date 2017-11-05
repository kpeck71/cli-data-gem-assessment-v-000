class AstoriaNews::CLI
  def call
    list_articles
    options
    goodbye
  end

  def list_articles
    puts "Here is the latest from Queens"
    @news = AstoriaNews::NewsScraper.scrape
    @news.each.with_index(1) do |article, i|
        puts "#{i}. #{article.title}"
      end
  end

  def options
    input = nil
    while input != "exit"
      puts "Enter the number of the article you'd like to read about."
      puts "Type list to see all articles, or type exit."
      input = gets.strip.downcase

    if input.to_i > 0
    article = @news[input.to_i-1]
    puts article.url
      elsif input == "list"
        list_articles
      elsif input == "exit"
        break
      else
        puts "String here for else condition"
      end
    end
  end

  def read_article
    puts news.url
  end

  def goodbye
    puts "Goodbye! Check back again tomorrow for more news from Queens."
  end

end
