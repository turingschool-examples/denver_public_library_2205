class Author

  attr_reader :first_name, :last_name, :name

  def initialize(input)
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @name = @first_name + " " + @last_name
  end

end
