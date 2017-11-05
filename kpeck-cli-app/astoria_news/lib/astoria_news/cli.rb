class AstoriaNews::CLI
  def call
    list_article
    options
    goodbye
  end

  def list_article
    puts <<-HEREDOC
    1. This is a title
    This is a short description
    2. This is another title
    This is a short description
    HEREDOC
  end

  def options
    puts "Please enter a number to read more."
    read_article
  end

  def read_article
  end

  def goodbye
    puts "Goodbye! Check back again tomorrow for more Astoria news."
  end

end
