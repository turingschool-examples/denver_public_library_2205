class Library

  attr_reader :name, :books, :authors, :start, :end

  def initialize(library_name)
    @name = library_name
    @books = []
    @authors = []
  end

  def add_author(incoming_author)
    @authors << incoming_author.name
    @books << incoming_author.books
  end

  def publication_time_frame_for(given_author)
    date_range = []
    given_author.books.each do |book|
      date_range << book.publication_year
    end
    date_range.sort
    start_end_range = []
    :start == date_range[0]
    :end == date.range.last
    start_end_range = :start, :end
  end
end
