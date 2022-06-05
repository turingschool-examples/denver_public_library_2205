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
    return_hash = {}
    book_dates = []
    author.books.each do |book|
      book_dates << book.publication_year.to_i
    end
    return_hash[:start] = (book_dates.min).to_s
    return_hash[:end] = (book_dates.max).to_s
    return_hash
  end

end
