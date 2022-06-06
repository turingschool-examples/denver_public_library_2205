require 'helper'

class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author_name)
    @authors << author_name
    add_authors_books
  end

  def add_authors_books
    @authors.last.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author_name)
    pull_author = @authors.find {|author| author == author_name}
    get_date_range(pull_author)
  end

  def get_date_range(author_pulled)
    dates = []
    author_pulled.books.each {|book| dates << book.publication_year}
    assess_date_range(dates)
  end

  def assess_date_range(dates)
    years = dates.minmax
    {:end => years.max, :start => years.min}
  end
end
