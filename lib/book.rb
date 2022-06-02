class Book
  attr_reader :author_first_name,
              :author_last_name,
              :publication_date,
              :title

  def initialize(info)
    @author = "#{info[:author_first_name]} #{info[:author_last_name]}"
    @publication_date = info[:publication_date]
    @title = info[:title]
  end

  def author
    @author 
  end

  def publication_year
    publication_date.split.last
  end
end
