class Author
  attr_reader :first_name, :last_name, :name, :books

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @name = @first_name + ' ' + @last_name
    @books = []
  end
end
