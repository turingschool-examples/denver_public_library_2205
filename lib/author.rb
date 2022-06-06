require "pry"
require './lib/book'

class Author
  attr_reader :first_name,
  :last_name,
  :name,
  :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @name = name
    @books = []
  end

  def name
    @name = @first_name + " " + @last_name
  end

  # def books(book)
  #   @books << book
  #   # i am confused on why this doesn't work
  # i ended up skipping it, moving on, add it in a different method, and it worked.
  # end

  def write(title, publication_date)
    book = Book.new({
      author_first_name: @name.split(" ")[0],
      author_last_name: @name.split(" ")[1],
      title: title,
      publication_date: publication_date
    })

    @books << book
    return book
  end




end
