require './lib/author'
require './lib/book'

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
    author.books.each {|book| books << book}
  end
  def publication_time_frame_for(author)
    these_books = author.books
    # require 'pry'; binding.pry
    min = these_books[0].publication_year.to_i
    max = these_books[0].publication_year.to_i
    these_books.each do |book|
      if book.publication_year.to_i < min
        min = book.publication_year.to_i
      elsif book.publication_year.to_i > max
        max = book.publication_year.to_i
      end

      {:start => min, :end => max}
    end

  end
end
