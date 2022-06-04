class Book
  attr_reader :title, :author 

  def initialize(info)
    @title = info[:title]
    @author = "#{info[:author_first_name]} #{info[:author_last_name]}"
  end

end
