class Author
  attr_reader :first_name, :last_name, :books
  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []
  end

  def name
    p @first_name + " " + @last_name
  end

  def write(title, date)
    book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title,   publication_date: date })
    @books << book
    book
  end




end
