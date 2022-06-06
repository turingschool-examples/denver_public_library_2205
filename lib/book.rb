class Book
attr_reader :title,
            :author,
            :author_first_name,
            :author_last_name,
            :publication_date

  def initialize(details)
    @title = details[:title]
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
    @publication_date = details[:publication_date]
    @author = "#{details[:author_first_name]} " + "#{details[:author_last_name]}"
  end
end
