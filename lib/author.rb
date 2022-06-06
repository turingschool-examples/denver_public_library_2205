require './lib/book'
class Author
  attr_accessor :name, :books, :first_name, :last_name

  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @name = details[:first_name]+(" ")+details[:last_name]
    @books = []
  end

  def write(title, publication_date)
      x = Book.new({
      author_first_name: self.first_name,
      author_last_name: self.last_name,
      title: title,
      publication_date: publication_date})
      @books << x
      return @books.last
    end
end
