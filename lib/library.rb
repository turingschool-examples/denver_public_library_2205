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
    author.books.map do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    book_hash = (author.books.map {|book| book.publication_year}).sort
      {
        start: book_hash.min,
      end: book_hash.max
      }
  end
end
