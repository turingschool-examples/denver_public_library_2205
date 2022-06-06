require "rspec"
require './lib/book.rb'
require './lib/author.rb'

RSpec.describe Author do

    it "exists" do
      data = {first_name: "Charlotte",
       last_name: "Bronte"}
      author = Author.new(data)
      expect(author).to be_instance_of(Author)
    end

    it "return the detail of an author" do
      data = {first_name: "Charlotte",
       last_name: "Bronte"}
      charlotte_bronte = Author.new(data)
       expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end
end
