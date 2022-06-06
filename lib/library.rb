class Library
  attr_reader :name, :books, :authors, :checked_out_books
  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
    @book_counter = Hash.new(0)
  end

  def add_author(author)
    @authors << author
    author.books.map {|book| @books << book}
  end

  def publication_time_frame_for(author)
    years = []
    author.books.each {|book| years << book.publication_year}
    time_frame = {}
    time_frame[:start] = years.sort.first
    time_frame[:end] = years.sort.last
    time_frame
  end

  def checkout(book)
    if @books.include?(book)
      if @checked_out_books.include?(book)
        false
      else
      @checked_out_books << book
      @book_counter[book] += 1
      true
      end
    else
      false
    end
  end

  def return(book)
    if @books.include?(book) && @checked_out_books.include?(book)
      @checked_out_books.delete(book)
      else
      false
    end
  end

  def most_popular_book
    sorted_books = @book_counter.sort_by {|k,v| -v}
    sorted_books.first.first
  end
end
