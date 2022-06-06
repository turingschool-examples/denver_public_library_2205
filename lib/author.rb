class Author

  attr_reader :name,
              :books

  def initialize(aut_info)
   @name = aut_info[:first_name] + " " +aut_info[:last_name]
   @books = []
 end

 def write(title, publication_date)

   book = Book.new
 end




end

#Kind of stumped on write method.
#ran out of time
