require './lib/book'

class Author
  attr_reader :books, :first_name, :last_name, :name

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @name = @first_name + ' ' + @last_name
    @books = []
  end

  def write(book_title, book_publication_date)
    new_book = Book.new({
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: book_title,
      publication_date: book_publication_date})
    @books << new_book
    new_book
  end
end
