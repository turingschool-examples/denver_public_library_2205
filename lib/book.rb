class Book
  def initialize(data)
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name]
    @title = data[:title]
    @publication_date = data[:publication_date]
  end

  def title
    @title
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    split_date = @publication_date.split
    split_date.last
  end
end
