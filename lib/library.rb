require 'pry'

class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def add_book(book)
    @books << book
  end

  def publication_time_frame_for(search_author)
    time_frame = {}
      authors.each do |author|
        if author == search_author
          sorted_books = author.books.sort_by{|book| book.publication_year}
          time_frame[:start] = sorted_books.first.publication_year
          time_frame[:end] = sorted_books.last.publication_year
      end
    end
    time_frame
  end
end
