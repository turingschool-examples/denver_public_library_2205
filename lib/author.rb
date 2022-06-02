class Author
  attr_reader :first_name
              :last_name

  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @books = []
  end

  def name
    @name
  end

  def books
    @books
  end

  def write(title, date)
    require "pry"; binding.pry

    @books.push(title, date)
  end
end
