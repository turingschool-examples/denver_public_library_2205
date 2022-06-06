class Book

  attr_reader :author_first_name, :author_last_name, :title, :publication_date

  def initialize(input)
    @author_first_name = input[:author_first_name]
    @author_last_name = input[:author_last_name]
    @title = input[:title]
    @publication_date = input[:publication_date]
  end

  def publication_year
    @publication_date
    temp_array = @publication_date.split
    year_yanker = temp_array[2]
    # require 'pry'; binding.pry
  end

  def author
    @author_first_name + " " + @author_last_name
  end
end
