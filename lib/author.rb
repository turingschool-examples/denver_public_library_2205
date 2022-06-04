class Author

  attr_reader :first_name,
              :last_name,
              :name,
              :books
  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @name = @first_name + " " + @last_name
    @books = []
  end

  def write(title, publication_date)
    new_books = Book.new({author_first_name: "#{@first_name}",
                      author_last_name: "#{@last_name}",
                      title: title,
                      publication_date: publication_date})
  end

  def add_books(book)
    @books << book
  end
end
