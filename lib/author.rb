class Author
  attr_reader :first_name, :last_name, :write

  def initialize(data_from_hash)
    @first_name = data_from_hash[:first_name]
    @last_name = data_from_hash[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def books
    @books
  end

  def write
  end
end
