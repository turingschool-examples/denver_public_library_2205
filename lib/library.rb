class Library

  attr_reader :name,
              :books,
              :authors,
              :checked_out_books,
              :checkout_frequency

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
    @checkout_frequency = Hash.new(0)
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @checkout_frequency[book] = 0
      @books << book
    end
  end

  def publication_time_frame_for(author)
    return_hash = {}
    book_dates = []
    author.books.each do |book|
      book_dates << book.publication_year.to_i
    end
    return_hash[:start] = (book_dates.min).to_s
    return_hash[:end] = (book_dates.max).to_s
    return_hash
  end

  def checkout(book)
    if @checked_out_books.include?(book)
      return false
    end

    if @books.include?(book)
      @checkout_frequency[book] += 1
      @checked_out_books << book
      return true
    else
      return false
    end

  end

  def return(book)
    @checked_out_books.delete(book)
  end

  def most_popular_book
    @checkout_frequency.max_by {|k,v| v}[0]
  end

end
