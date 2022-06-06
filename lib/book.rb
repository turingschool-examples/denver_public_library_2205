class Book
  attr_reader :title, :author_first_name, :author_last_name, :publication_date

  def initialize(book)
    @title = book[:title]
    @first_name = book[:author_first_name]
    @last_name = book[:author_last_name]
    @publication_date = book[:publication_date]
  end

  def author
    p  @first_name +" " + @last_name
  end

  def publication_year
    p @publication_date[-4..-1]
  end





end
