class Book
  attr_reader :title,
              :publication_year,
              :author



  def initialize(info)
    @title = info[:title]
    @author = info[:author_first_name] + " " + info[:author_last_name]
    @publication_year = info[:publication_date].split.last

  end

end
