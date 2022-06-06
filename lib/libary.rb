require 'pry'
class Library
attr_reader :name,
            :books,
            :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end

  end


end


p "i give up 2hrs are up"
