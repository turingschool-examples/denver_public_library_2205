class Book

  attr_accessor :title, :author, :publication_date

  def initialize(book)
    @title = book[:title]
    @author = book[:author_first_name] + " " + book[:author_last_name]
    @publication_date = book[:publication_date]
  end

  def publication_year
    extract = []
    extract_r = []
    @publication_date.each_char {|x| extract << x}
      extract.reverse_each {|x| extract_r << x}
      date = extract_r[0...4]
      date = date.reverse.join("")
  end
end
