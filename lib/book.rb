class Book
attr_reader :title, :author, :publication_year

  def initialize(info)
    @title = info[:title]
    @author = "#{info[:author_first_name]} #{info[:author_last_name]}"
  end

  def publication_year(info)
    @publication_year = info[:publication_date.(-1..-4)]
  end
  # def book.title(book)
  # end
end
