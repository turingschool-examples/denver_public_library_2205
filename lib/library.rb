require './lib/book'
require './lib/author'

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
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    publishing_years = []
    author.books.each do |book|
      publishing_years << book.publication_year.to_i
    end

    start_year = publishing_years.sort.first
    end_year = publishing_years.sort.last
    output_hash = {:start => start_year.to_s, :end => end_year.to_s}
  end

  def checkout(book)
    return false if !@books.include?(book) || @checked_out_books.include?(book)
    @checked_out_books << book
    book.times_checked_out += 1
    true
  end

  def return(book)
    if @books.include?(book)
      @checked_out_books.delete(book)
    else
      "The library doesn't have that book."
    end
  end

  def most_popular_book
    @books.max_by do |book|
      book.times_checked_out
    end
  end
end
