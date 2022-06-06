class Library
attr_reader :name,
            :authors,
            :books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books
  end

  def publication_time_frame_for(author_object)
    array_publication_dates = []
    author_object.books.find_all do |book|
        array_publication_dates << book.publication_date[-4..-1]
      end
    return hash_of_publication = {
      :end => array_publication_dates.sort.last,
      :start => array_publication_dates.sort.first
    }
  end

  def checkout(book)
    if @books.include?(book) && @checked_out_books.include?(book) == false
      @checked_out_books << book
      return true
    elsif @books.include?(book) && @checked_out_books.include?(book) == true
      false #because book has already been checked out
    elsif @books.include?(book) == false
      false
    end
  end
end
