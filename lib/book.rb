class Book
  attr_reader :author_first_name,
              :author_last_name,
              :author,
              :title,
              :publication_date,
              :publication_year

  def initialize(attributes)
    @author_first_name = attributes[:author_first_name]
    @author_last_name = attributes[:author_last_name]
    @author = attributes[:author_first_name].concat(" ", attributes[:author_last_name])
    @title = attributes[:title]
    @publication_date = attributes[:publication_date]
    @publication_year = attributes[:publication_date].slice(9..-1)
  end
end
