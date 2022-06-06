require './lib/book'
class Author
  attr_reader :first_name, :last_name, :books
  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    name = @first_name + " " + @last_name
  end

  def write(title, publication_date)
      book = Book.new({title: title, publication_date: publication_date, author_first_name: first_name, author_last_name: last_name})
      @books << book
      book
  end

end
