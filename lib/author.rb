class Author

  attr_reader :first_name,
              :last_name,
              :books

  def initialize(input)
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def write(title,publication_date)
    Book.new({
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: title,
      publication_date: publication_date
      })
  end

end
