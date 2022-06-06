require "pry"
require_relative "../lib/author"

class Library
    attr_reader :name, :books, :authors
    def initialize(name)
        @name = name
        @books = []
        @authors = []
    end

    def add_author(author)
        add_books(author)
        @authors << author
    end

    def add_books(author)
     author.books.each do |book|
        @books << book
     end
    end

    def publication_time_frame_for(author)
        minmax = author.books.minmax_by do |book|
            book.publication_year.to_i
        end
        publication_formater(minmax)
    end

    def publication_formater(minmax)
        hash = Hash.new
        hash[:start] = minmax[0].publication_year
        hash[:end] = minmax[1].publication_year
        hash
    end
end