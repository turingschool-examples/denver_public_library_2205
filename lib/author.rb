require 'helper'
require 'helpable'

class Author
  attr_reader :first_name,
              :last_name

  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
  end
end
