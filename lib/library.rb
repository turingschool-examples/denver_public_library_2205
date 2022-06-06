class Library

  attr_reader :name, :books, :authors

  def initialize(library_name)
    @name = library_name
    @books = []
    @authors = []
  end
end
