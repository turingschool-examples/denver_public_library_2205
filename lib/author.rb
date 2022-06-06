class Author
  attr_reader :first_name, :last_name, :books, :publication_date
  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []
  end

  def name
    name = @first_name + " " + @last_name
  end

  def write(book_name, book_publication_date)
    new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name,title: book_name, publication_date: book_publication_date})
    # @books << new_book

    # binding.pry
  end




  # def write(book_name, book_publication_date)
  #   @books.each do |book|
  #     Book.new({author_first_name: @first_name, author_last_name: @last_name,title: book_name, publication_date: book_publication_date})
  #   end
  # end

end
