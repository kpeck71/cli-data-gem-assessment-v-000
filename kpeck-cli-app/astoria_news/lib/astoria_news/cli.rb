class AstoriaNews::CLI
  def call
    list article
    options
    goodbye
  end

  def list_article
    puts <<-HEREDOC
    This is a title
    This is a short description
    HEREDOC
  end

  def options
    puts "Please enter a number to read more."
  end

  def goodbye
    puts "Goodbye! Check back again tomorrow for more Astoria news."
  end

end
