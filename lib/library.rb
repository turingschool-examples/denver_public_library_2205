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
  end

  def add_books(book)
    @books << book
  end

  # def publication_time_frame_for(author)
  #
  # end
end
