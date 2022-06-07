class Author

  attr_reader :name, :books

  def initialize(info)
    @name = info[:first_name] + " " + info[:last_name]
    @books = []
  end

  def write(name, date)
    author_first_name = @name.split(" ")[0]
    author_last_name = @name.split(" ")[1]

    @books << new_book = Book.new({author_first_name: author_first_name, author_last_name: author_last_name, title: name, publication_date: date})

    new_book
  end

end
