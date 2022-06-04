class Author
  attr_reader   :first_name,
                :last_name,
                :books,
                :name,
                :jane_eyre
  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
    @book = Book.new({author_first_name: "Charlotte",
                      author_last_name: "Bronte",
                      title: "Jane Eyre",
                      publication_date: "October 16, 1847"})

  end


  def write(title, date)
    date = @book.publication_date.split.last

    @jane_eyre = Book.new({author_first_name: @first_name,
                          author_last_name: @last_name,
                          title: title,
                          publication_date: date})
    @books << @jane_eyre
    @books

  end
end
# # publication_year #Module from Book class
# book_year = []
# book_year << publication_date.split
# book_year.flatten.last
# new_book = {
#   title: @books.flatten[0],
#   date: book_year.flatten.last
# }
    #
    #
    # @books << @book
