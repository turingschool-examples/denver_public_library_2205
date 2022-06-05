class Author
  attr_reader :name, :books

  def initialize(data)
    @data = data
    @name = "#{data[:first_name]} #{data[:last_name]}"
    @books = []
  end

  def write(title, publication_date)
    books << Book.new({author_first_name: @data[:first_name], author_last_name: @data[:last_name], title: title, publication_date: publication_date})
    books.last
  end
end
