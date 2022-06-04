require 'pry'
class Author
  attr_reader :name, :books

  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @books = []
  end

  def write(title, pub_date)
    book_info = {}
    book_info[:author_first_name] = @name.split[0]
    book_info[:author_last_name] = @name.split[1]
    book_info[:title] = title
    book_info[:publication_date] = pub_date
    # binding.pry
    Book.new(book_info)
  end

end
