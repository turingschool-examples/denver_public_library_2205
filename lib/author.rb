require "pry"

class Author
  attr_reader :first_name,
  :last_name,
  :name

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @name = name
  end

  def name
    @name = @first_name + " " + @last_name
  end




end
