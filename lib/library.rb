require_relative 'book'
require_relative 'author'

class Library

  attr_reader :name,
              :books,
              :authors,
              :checked_out_books

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
    timeframe_hash = {}
    sorted_books = @books.find_all do |book|
      book.author == author.name
    end.sort_by do |book|
      book.publication_year
    end
    timeframe_hash[:start] = sorted_books.first.publication_year
    timeframe_hash[:end] = sorted_books.last.publication_year
    timeframe_hash
  end

  def checkout(book)
    valid = @books.include?(book) && !@checked_out_books.include?(book)
    if valid
      @checked_out_books << book
      book.add_checkout
    end
    return valid
  end

  def return(book)
    @checked_out_books.delete_if do |checked_out_book|
      checked_out_book.title == book.title
    end
  end

  def most_popular_book
    @books.sort_by do |book|
      book.checkout_count
    end.last
  end

end
