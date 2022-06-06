require 'helper'
require 'helpable'

class Author
  include Helpable
  attr_reader :first_name,
              :last_name,
              :books

  def initialize(details)
    @first_name = details[:first_name]
    @last_name = details[:last_name]
    @books = []
  end

  def write(title, publication_date)
    @books << Book.new({
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: title,
      publication_date: publication_date
    })
  end

  def name
    @first_name + ' ' + @last_name
  end
end
