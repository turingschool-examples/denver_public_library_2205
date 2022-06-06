class Book
  attr_reader :title,
              :author,
              :publication_year

  attr_accessor :checked_out

  def initialize(attributes)
    @author_first_name = attributes[:author_first_name]
    @author_last_name = attributes[:author_last_name]
    @title = attributes[:title]
    @publication_date = attributes[:publication_date]
    @author = @author_first_name + " " + @author_last_name
    @publication_year = @publication_date.split.last
    @checked_out = false
  end

end
