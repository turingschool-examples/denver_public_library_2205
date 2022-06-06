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
    #   author.books.each do |book|
    #     @books << book
    #   end
    # end
  end

  def publication_time_frame_for(author_name)
    pull_author = @authors.select do |author|
      author.name == author_name
    end
    pull_author.books.select {|book| book.publication_date.to_i}.minmax
    require "pry"; binding.pry
  end
end
