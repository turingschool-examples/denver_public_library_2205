class Library

  attr_reader :name, :books, :authors, :checked_out
  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out = []
  end

  def add_author(author)
    @authors << author
    author.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author)
    career = (author.books.map {|book| book.publication_year.to_i}).sort
    {
      start: career.first.to_s,
      end: career.last.to_s
    }
  end

  def checkout(book)
    return true if @books.include?(book) # && !checked_out.include?(book)
    @checked_out << book
    false
  end
end
