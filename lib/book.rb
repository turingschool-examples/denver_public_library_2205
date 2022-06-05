class Book
  attr_reader :title,
    :author_first_name,
    :author_last_name,
    :publication_date,
    :author,
    :publication_year
  attr_accessor :times_checked_out

  def initialize(attributes)
    @title = attributes[:title]
    @first_name = attributes[:author_first_name]
    @last_name = attributes[:author_last_name]
    @publication_date = attributes[:publication_date]
    @author = @first_name + ' ' + @last_name
    @publication_year = @publication_date[-4..-1]
    @times_checked_out = 0
  end

end
