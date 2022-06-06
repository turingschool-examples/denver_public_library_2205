class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date
  def initialize(hash)
    @author_first_name = hash[:author_first_name]
    @author_last_name = hash[:author_last_name]
    @title = hash[:title]
    @publication_date = hash[:publication_date]
  end

  def author
    author_first_name + " " + author_last_name
  end

  def publication_year
    publication_year = publication_date.split(' ').pop()
  end

end
