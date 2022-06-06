require './lib/book'
require './lib/author'
class Library
  attr_reader :name,
              :books,
              :authors,
              :checked_out_books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    timeframe = {}
    collection_of_years = []
    author.books.each do |book|
      collection_of_years << book.publication_year
      end
      timeframe[:start] = collection_of_years.min.to_s
      timeframe[:end] = collection_of_years.max.to_s
      return timeframe
  end

  def checkout(book)
    @books.delete(book)
    @checked_out_books << book
    book.book_popularity += 1
  end

  def return(book)
    @checked_out_books.delete(book)
    @books << book
  end

  def most_popular_book
    total_books = @books + @checked_out_books
    hash_books = {}
    total_books.each do |book|
        hash_books[book] = book.book_popularity
      end
      hash_books.key(hash_books.values.max)

  end

end
