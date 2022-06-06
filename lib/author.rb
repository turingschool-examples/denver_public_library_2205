require 'helper'

class Author
  attr_reader :name,
              :books,
              :write

  def initialize(data)
    @name = data[:first_name].concat(" ", data[:last_name])
    @books = []

  end

  #This method sounded simple enough, then I spent 90% of my time on it

  def add_book(date, text)
    require "pry"; binding.pry
      data = [!@name, date, text]
      @books << book
    end
end
# def write(title, publication_date)
#   data = (title, publication_date)
#   @books << book(data)
# end
