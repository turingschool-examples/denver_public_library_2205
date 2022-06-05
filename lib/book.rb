class Book
  attr_reader :title,
    :author,
    :publication_date

  def initialize(info)
    @title = info[:title]
    @author = info[:author]
    @publication_date = info[:publication_date]
  end

end
