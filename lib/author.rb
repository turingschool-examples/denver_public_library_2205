class Author

  attr_reader :first_name, :last_name, :full_name, :books
  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @full_name = "#{@first_name} #{@last_name}"
    @books = []
  end

  def write(title, publication_date)
        book = Book.new({:title => title, :publication_date => publication_date})
        @books << book
        book
  end
end
