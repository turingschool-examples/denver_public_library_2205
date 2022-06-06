class Book

  attr_reader :details,
              :author,
              :title,
              :publication_year

  def initialize(details)
    @details = details
    #require "pry"; binding.pry
    @author = "#{details[:author_first_name]} #{details[:author_last_name]}"
    @title = details[:title]
    @publication_year = details[:publication_date][-4..-1]
  end
end
