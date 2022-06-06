class Book
  attr_accessor :author_first_name,
  :author_last_name,
  :title,
  :publication_year,
  :publication_date,
  :author

  def initialize(details)
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
    @author = details[:author_first_name]+ (" ") + details[:author_last_name]
    @title = details[:title]
    @publication_year = details[:publication_date][-4..-1]
    @publication_date = details[:publication_date]
  end
end
