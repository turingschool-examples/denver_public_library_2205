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
    @authors.each {|author| author.books.each {|book| @books << book}}
  end

  def publication_time_frame_for(author_name)
    pull_author = @authors.select do |author|
      author.name == author_name
    end
    pull_author.books.each {|book| book.publication_date}.minmax
    require "pry"; binding.pry
  end
end
