class Book
attr_reader :title,
            :author,
            :author_first_name,
            :author_last_name

  def initialize(details)
    @title = details[:title],
    @author = details[:author]
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
  end
end
