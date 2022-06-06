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
    publication_times = author.books.map { |book| book.publication_year }.sort!
    {
      :start => publication_times.first,
      :end => publication_times.last
    }
  end
end
