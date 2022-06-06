class Book
  attr_reader :author

  def initialize(data_from_hash)
    @author_first_name = data_from_hash[:author_first_name]
    @author_last_name = data_from_hash[:author_last_name]
    @title = data_from_hash[:title]
    @publication_date = data_from_hash[:publication_date]
  end

  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def title
    @title
  end

  def publication_year
    @publication_date[9..13]
  end
end
