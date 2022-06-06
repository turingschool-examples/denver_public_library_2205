class Library
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
      @authors << author
        author.books.each do |book|
         @books << book
        end
  end

  def publication_time_frame_for(author)
   book_year = author.books.map {|book| book.publication_year}
   start_end_hash = {:start => book_year.min, :end => book_year.max}
  end

end
