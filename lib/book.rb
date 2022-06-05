class Book
  attr_reader :title,
    :author_first_name,
    :author_last_name,
    :publication_date,
    :author,
    :publication_year

  def initialize(attributes)
    @title = attributes[:title]
    @first_name = attributes[:author_first_name]
    @last_name = attributes[:author_last_name]
    @publication_date = attributes[:publication_date]
    @author = @first_name + ' ' + @last_name
    @publication_year = @publication_date[-4..-1]
  end

end
