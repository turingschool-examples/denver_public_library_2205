require 'pry'
class Author
  attr_reader :name

  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
  end

end
