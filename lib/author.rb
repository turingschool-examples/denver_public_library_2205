class Author
  attr_reader :details,
              :name,
              :books

  def initialize(details)
    @details = details
    @name = "#{details[:first_name]} #{details[:last_name]}"
    @books = []
  end

  def write(title, date)
    book = Book.new({author_first_name: @details[:first_name], author_last_name: @details[:last_name], title: title, publication_date: date})
    books << book
    book 
  end
end
