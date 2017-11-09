class TestingCli::CLI
  def call
    TestingCli::Scraper.new.scrape_episodes
    welcome
    print_episodes
    options
  end

  def welcome
    puts "Welcome to the Code Newbie episode list. Here is a list of all Code Newbie episode titles."
  end

  def print_episodes
    TestingCli::Episode.all.each do |ep|
      puts ep.title
    end
  end

  def options
    input = nil
    while input != "exit"
      puts " "
      puts "Which episode would you like to learn more about? Please enter the episode number:"
      answer = gets.strip
      if answer.to_i <= TestingCli::Episode.all.size && answer.to_i != 0
        episode = TestingCli::Episode.all[-(answer.to_i)] #make sure 0 is not a valid entry
        puts "#{episode.title}"
        puts "#{episode.short_des}"
        puts "\nIf you would like to learn more about this episode, enter 'more'. To see full list of episodes again, enter 'list', or type 'exit'."
        puts " "
      end
      #else "not a valid entry. How to get it to restart and accept other episode numbers?"
      input = gets.strip
      case input
      when "more"
          episode.content
          puts "\nWould you like to see the full episode list again? Enter 'list'."
          puts "Or enter 'exit'."
            answer2 = gets.strip #downcase?
            if input == "list"
              print_episodes
              puts "Please enter an episode number."
            end
      when "list"
          print_episodes
          puts "Please enter an episode number."
      else
          "That doesn't look like a valid entry. Please enter a valid episode number, 'list', or 'exit'."
      end
    end
    end
  end

end
