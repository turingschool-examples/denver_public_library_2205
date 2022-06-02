class Book

  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date,
              :checkout_count

  def initialize(data)
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name]
    @title = data[:title]
    @publication_date = data[:publication_date]
    @checkout_count = 0
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    @publication_date[-4..-1]
  end

  def add_checkout
    @checkout_count += 1
  end

end
