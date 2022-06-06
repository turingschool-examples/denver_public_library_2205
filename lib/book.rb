require 'helper'

class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date

  attr_accessor

  def initialize(details)
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
    @title = details[:title]
    @publication_date = details[:publication_date]
  end
end
