class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date

  def initialize(attributes)
    @author_first_name = attributes[:author_first_name]
    @author_last_name = attributes[:author_last_name]
    @title = attributes[:title]
    @publication_date = attributes[:publication_date]
  end

  def author
    @author_first_name.concat(" ", @author_last_name)
  end

  def publication_year
    @publication_date.split.last
  end


end
