class Library

  attr_reader :name, :books, :authors

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
    
  end
end
