class Book

attr_reader :author_last_name,
            :author_first_name,
            :title
def initialize(data)
  @author_last_name = data[:author_last_name]
  @author_first_name = data[:author_first_name]
  @title = data[:title]
end
end
