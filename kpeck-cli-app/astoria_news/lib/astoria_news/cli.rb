class AstoriaNews::CLI
  def call
    list_articles
    options
    goodbye
  end

  def list_articles
    puts "\nHere is the latest from Queens"
    @news = AstoriaNews::NewsScraper.scrape
    @news.each.with_index(1) do |article, i|
        puts "#{i}. #{article.title}"
      end
  end

  def options
    input = nil
    while input != "exit"
      puts "\nEnter the number of the article you'd like to read about."
      puts "Type list to see all articles, or type exit."
      input = gets.strip.downcase

    if input.to_i > 0
    article = @news[input.to_i-1]
    puts "To read the full article '#{article.title}', visit: #{article.url}"
      elsif input == "list"
        list_articles
      elsif input == "exit"
        break
      else
        puts "\nI'm sorry, I don't understand that entry. Please enter an existing article number or Exit."
      end
    end
  end

  def read_article
    puts news.url
  end

  def goodbye
    puts "\nGoodbye! Check back again tomorrow for more news from Queens."
  end

end
