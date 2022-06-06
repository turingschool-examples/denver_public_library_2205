class Author
  attr_reader :first_name, :last_name

  def initialize(author_attributes)
    @first_name = author_attributes[:first_name]
    @last_name = author_attributes[:last_name]
  end

  def name
    @first_name + " " + @last_name
  end
end
