class Library
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_authors(author)
    @books.concat(author.books)
    @authors << author
  end

  def publication_time_frame_for(author)
    sorted_tf = author.books.sort { |x, y| x.publication_year <=> y.publication_year }
    pub_tf = {:start => sorted_tf.first.publication_year, :end => sorted_tf.last.publication_year}
  end

end
