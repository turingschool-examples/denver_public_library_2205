class Author

  attr_reader :name,
              :books

  def initialize(attributes)
    @name = "#{attributes[:first_name]} #{ attributes[:last_name]}"
    @books = []
  end

  def write(title, date)
    first_name = @name.split(" ").first
    last_name = @name.split(" ").last
    attributes = {
      :author_first_name => first_name,
      :author_last_name => last_name,
      :title => title,
      :publication_date => date
    }
    @books << Book.new(attributes)
  end


end
