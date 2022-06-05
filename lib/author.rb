class Author
  attr_reader :first_name,
              :last_name,
              :books

  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @books = []
  end

  def name
    @name
  end

  def write(title, date)
    new_book = Book.new({
      author_first_name: @name.split.first, author_last_name: @name.split.last,
      title: title,
      publication_date: date})
      @books << new_book
      new_book
  end
end
