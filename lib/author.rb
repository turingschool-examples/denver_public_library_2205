class Author
attr_reader :author_full_name,
            :first_name,
            :last_name,
            :books


  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @author_full_name = "#{details[:first_name]} " + "#{details[:last_name]}"
    @books = []
  end

end
