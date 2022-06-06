class Author
attr_reader :author_full_name,
            :first_name,
            :last_name


  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @author_full_name = "#{details[:first_name]} " + "#{details[:last_name]}"
  end

end
