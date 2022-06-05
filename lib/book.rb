class Book
  attr_reader :title, :author, :publication_year
  attr_accessor :times_checked_out

  def initialize(data)
    @title = data[:title]
    @author = "#{data[:author_first_name]} #{data[:author_last_name]}"
    @publication_year = data[:publication_date][-4..-1]
    @times_checked_out = 0
  end
end
