class Library
  attr_reader :name, :books, :authors, :author
  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @author = Author.new({first_name: "Charlotte",
                          last_name: "Bronte"
                          })

  end

  def add_author(author)
    @authors << author
  end

  def add_book(book)
    @books << book
  end

end
