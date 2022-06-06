require './lib/book'
require './lib/author'

class Library
  attr_accessor :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author()
    x = var.values.first
    y = var.values.last
    z = Author.new({first_name: x, last_name: y})
    @authors << z
  end

end
