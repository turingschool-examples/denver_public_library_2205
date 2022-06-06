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
    author_books = author.books
    author_books.map {|book| @books << book}
  end

  def publication_time_frame_for(author)
    author_books = author.books
    highest_year_book = author_books.max_by {|book| book.publication_year.to_i}
    lowest_year_book = author_books.min_by {|book| book.publication_year.to_i}
    range_hash = {}
    range_hash[:start] = lowest_year_book.publication_year
    range_hash[:end] = highest_year_book.publication_year
    return range_hash
  end
end
