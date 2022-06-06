require './lib/book'
class Author
attr_reader :author_full_name,
            :first_name,
            :last_name,
            :books


  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @author_full_name = "#{details[:first_name]} " + "#{details[:last_name]}"
    @books = []
  end

  def write(book_title, publish_year)
    new_book = Book.new({
        author_first_name: @first_name,
        author_last_name: @last_name,
        author_full_name: @author_full_name,
        title: book_title,
        publication_date: publish_year
        })
        @books << new_book
        new_book
  end

end
