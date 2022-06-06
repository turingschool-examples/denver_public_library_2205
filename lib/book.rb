class Book

attr_reader :author_last_name,
            :author_first_name,
            :title,
            :author
attr_accessor :book_popularity
  def initialize(data)
    @author_last_name = data[:author_last_name]
    @author_first_name = data[:author_first_name]
    @title = data[:title]
    @publication_date = data[:publication_date]
    @author = @author_first_name + " " + @author_last_name
    @book_popularity = 0

  end

  def publication_year
    last_4_digits = @publication_date[-4..-1]
    last_4_digits.to_i
  end
end
