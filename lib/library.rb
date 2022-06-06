class Library
  attr_reader :name, :authors, :books

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

  def publication_time_frame_for(writer)
    time_frame = {}
    years = []
      authors.each do |author|
        if author == writer
          author.books.select do |book|
            years << book.publication_year
        end
        years.minmax
        time_frame[:start] = years.minmax.first
        time_frame[:end] = years.minmax.last
      end
    end
    time_frame
  end
end
