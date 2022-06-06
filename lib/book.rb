class Book

attr_reader :author_last_name,
            :author_first_name,
            :title,
            :author
  def initialize(data)
    @author_last_name = data[:author_last_name]
    @author_first_name = data[:author_first_name]
    @title = data[:title]
    @publication_date = data[:publication_date]
    @author = @author_first_name + " " + @author_last_name
  end

  def publication_year
    last_4_digits = @publication_date[-4..-1]
    last_4_digits
  end
end
