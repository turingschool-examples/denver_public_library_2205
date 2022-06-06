class Library
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.map {|book| @books << book}
  end

  def publication_time_frame_for(author)
    years = []
    author.books.each {|book| years << book.publication_year}
    time_frame = {}
    time_frame[:start] = years.sort.first
    time_frame[:end] = years.sort.last
    time_frame
  end
end
