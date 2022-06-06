class Author

  attr_reader :name,
              :books

  def initialize(aut_info)
   @name = aut_info[:first_name] + " " +aut_info[:last_name]
   @books = []
 end



end
