class Library

  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    @books += author.books
  end

  def publication_time_frame_for(author)
    author_dates = []
    author.books.each do |book|
      author_dates << book.publication_year
    end
    {start: author_dates.sort[0], end: author_dates.sort[-1]}
  end

  def checkout(book)
    if @books.include?(book)
      @books.delete(book)
      @checked_out_books << book
      true
    else
      false
    end
  end

  def return(book)
    @checked_out_books.delete(book)
    @books << book
  end


end
