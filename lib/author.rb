class Author
  attr_reader :name
  
  def initialize(data)
    @name = data[:first_name] + " " + data[:last_name]
  end
end
