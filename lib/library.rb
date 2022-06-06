class Library

  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_authors(author)
    @authors << author
    author.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author)
    writer_career_hash = {}

    sorted_books = @books.find_all {|book| book.author == author.name}.sort_by {|year| year.publication_year}

    writer_career_hash[:start] = sorted_books.first.publication_year
    writer_career_hash[:end] = sorted_books.last.publication_year
    writer_career_hash
  end


end
