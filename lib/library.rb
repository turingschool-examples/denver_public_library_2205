class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each { |book| @books << book }
  end

  def publication_time_frame_for(author)
    time_frame = {}
    year_list = author.books.map { |book| book.publication_year.to_i }

    time_frame[:start] = year_list.min.to_s
    time_frame[:end] = year_list.max.to_s
    time_frame
  end
end
