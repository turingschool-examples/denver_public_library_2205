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

  def publication_time_frame_for(author)
    years = (author.books.map {|book| book.publication_year.to_i}).sort
    {
      start: years.first.to_s,
      end: years.last.to_s
    }
  end

end
