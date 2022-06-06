require './lib/book'
class Author

  attr_reader :first_name, :last_name, :name, :books, :new_book, :author_first_name, :author_last_name, :title, :publication_date

  def initialize(input)
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @name = @first_name + " " + @last_name
    @books = []
  end

  def write(book_name, date_written)
    @new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: book_name, publication_date: date_written})
    @books << @new_book

    return @new_book
  end

end
