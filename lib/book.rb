class Book
  attr_reader :title,
              :author_first_name,
              :author_last_name,
              :author,
              :publication_date,
              :publication_year

  def initialize(info)
    @title = info[:title]
    @author_first_name = info[:author_first_name]
    @author_last_name  = info[:author_last_name]
    @author            = author_first_name + " " + author_last_name
    @publication_date  = info[:publication_date]
    @publication_year  = publication_date[-4..-1]
  end
end
