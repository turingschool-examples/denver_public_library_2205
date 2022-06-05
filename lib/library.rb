class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
    @checkout_list = Hash.new(0)
  end

  def add_author(author)
    @authors << author
    author.books.each { |book| @books << book }
  end

  def publication_time_frame_for(author)
    time_frame = {}
    year_list = author.books.map { |book| book.publication_year.to_i }

    time_frame[:start] = year_list.min.to_s
    time_frame[:end] = year_list.max.to_s
    time_frame
  end

  def checkout(book)
    if !@checked_out_books.include?(book) && @books.include?(book)
      @checked_out_books << book
      book.times_checked_out += 1
      true
    else
      false
    end
  end

  def return(book)
    @checked_out_books.delete(book)
  end

  def most_popular_book
    @books.max { |a, b| a.times_checked_out <=> b.times_checked_out }
  end
end
