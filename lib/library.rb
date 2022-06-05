require './lib/book'
require './lib/author'

class Library
  attr_reader :name, :books, :authors

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
    publishing_years = []
    author.books.each do |book|
      publishing_years << book.publication_year.to_i
    end

    start_year = publishing_years.sort.first
    end_year = publishing_years.sort.last
    output_hash = {:start => start_year.to_s, :end => end_year.to_s}
  end
end
