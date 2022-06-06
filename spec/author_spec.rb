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

    it "return the details of an author" do
      data = {first_name: "Charlotte",
              last_name: "Bronte"}
      charlotte_bronte = Author.new(data)
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
      expect(charlotte_bronte.first_name).to eq("Charlotte")
      expect(charlotte_bronte.last_name).to eq("Bronte")
      expect(charlotte_bronte.books).to eq([])
    end

    it "can test if an author can write a book and return the author's books" do
      data = {first_name: "Charlotte",
              last_name: "Bronte"}
      charlotte_bronte = Author.new(data)
      expect(charlotte_bronte.books).to eq([])
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
      expect(charlotte_bronte.books.length).to eq(1)
      villette = charlotte_bronte.write("Villette", "1853")
      expect(charlotte_bronte.books.length).to eq(2)
      require "pry"; binding.pry
    end
end
