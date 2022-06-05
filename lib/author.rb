require_relative 'book'

class Author
  attr_reader :name, :books

  def initialize(attributes)
    @name = attributes[:first_name] + " " + attributes[:last_name]
    @books = []
  end

  def write(title, year)
    author_first = @name.split(" ").first
    author_last = @name.split(" ").last
    attributes = {author_first_name: author_first, author_last_name: author_last, title: title, publication_date: year}
    book = Book.new(attributes)
  end


end

require 'pry'; binding.pry
