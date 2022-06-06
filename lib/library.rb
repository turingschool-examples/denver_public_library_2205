class Library
attr_reader :name,
            :authors,
            :books

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books
  end

  def publication_time_frame_for(author_object)
    array_publication_dates = []
    author_object.books.find_all do |book|
        array_publication_dates << book.publication_date[-4..-1]
      end
    return hash_of_publication = {
      :end => array_publication_dates.sort.last,
      :start => array_publication_dates.sort.first
    }
  end

end
