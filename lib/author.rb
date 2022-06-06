require 'pry'
require_relative 'book'

class Author
    attr_reader :first_name, :last_name, :books
    def initialize(data)
        @first_name = data[:first_name]
        @last_name = data[:last_name]
        @books = []
    end

    def write(title,publication_date)
        new_book = Book.new({:title => title, :publication_date => publication_date})
        @books << new_book
        new_book
    end

    def name
       @first_name + " " + @last_name
    end
end