require 'pry'
class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
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

  def checkout(item)
    @books.include?(item) ? add_checkout_books(item) : false
  end

  def add_checkout_books(item)
    @books.each {|book| book == item ? @checked_out_books << item : nil}
    @books.each {|book| book == item ? @books.delete(item) : nil}
    return true
  end

  def return(book)
    @checked_out_books.delete(book)
    @books.prepend(book)
  end

end
