require_relative 'book'
require_relative 'author'

class Library

  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
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

end
