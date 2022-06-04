require 'pry'
class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author)
    book_range = author.books.map {|book| book.publication_year.to_i}
    min = book_range.min
    max = book_range.max
    range = {
      start: min.to_s,
      end: max.to_s
    }
  end

end
