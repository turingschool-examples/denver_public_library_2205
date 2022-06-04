class Book
  attr_accessor :author,
                :title,
                :publication_date
  def initialize(info)
    @author = "#{info[:author_first_name]} #{info[:author_last_name]}"
    @title = info[:title]
    @publication_date = info[:publication_date]

  end

  def publication_year
    book_year = []
    book_year << @publication_date.split
    book_year.flatten.last
  end
end
