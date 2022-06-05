class Book
  attr_reader :title,
    :author,
    :publication_date

  def initialize(info)
    @title = info[:title]
    @author = info[:author_first_name] + " " + info[:author_last_name]
    @publication_date = info[:publication_date]
    @publication_year = info[:publication_date][-4..-1]
  end

  def publication_year
    @publication_year
  end
  #this doesn't feel right. It passes, and i figured that it would define it if I pulled it from the initialize since I had the method next to it, but is this practical and correct?
end
