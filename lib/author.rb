class Author

  attr_accessor :name, :books, :name_first, :name_last
  def initialize(info)
    @name = info[:first_name] + " " + info[:last_name]
    @books = []
    @name_first = info[:first_name]
    @name_last = info[:last_name]
  end

  def write(title, date)
    book_info = {
      :author_first_name => @name_first,
      :author_last_name => @name_last,
      :title => title,
      :publication_date => date
    }
    new_book = Book.new(book_info)
    @books << new_book
    return new_book
    require "pry"; binding.pry
  end

end
