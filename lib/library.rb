class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name    = name
    @books   = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    published_year = author.books.map do |book|
      book.publication_year.to_i
    end.sort
    #require "pry"; binding.pry
    {start: published_year.first.to_s, end: published_year.last.to_s}
  end
end
