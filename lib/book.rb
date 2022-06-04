class Book

  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date,
              :author
  def initialize(data)
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name,]
    @title = data[:title]
    @publication_date = data[:publication_date]
    @author = @author_first_name + " " + @author_last_name
  end

  def publication_year
    @publication_date.split(//).last(4).join
  end

end
