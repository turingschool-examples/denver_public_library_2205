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

end
