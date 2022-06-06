require "rspec"
require './lib/book.rb'
require './lib/author.rb'

RSpec.describe Author do

    it "exists" do
      author = Author.new
      expect(author).to be_instance_of(Author)
    end
    
end
