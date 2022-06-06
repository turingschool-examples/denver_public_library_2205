class Library
attr_reader :name,
            :authors,
            :books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books
  end

end
