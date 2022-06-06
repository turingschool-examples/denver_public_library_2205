require "./lib/book"

class Author
  attr_reader :books
  def initialize(info)
    @info = info
    @books = []
  end

  def name
    @info[:first_name] + " " + @info[:last_name]
  end

  #I am going to cry, what am I not getting here?!
  def write(title, publication_date)
    title = Book.new({
    :author => (name),
    :title => title,
    :publication_year => publication_date})
  end

end
