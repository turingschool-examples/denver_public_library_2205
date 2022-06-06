require './lib/book'
require './lib/author'
require 'rspec'
require 'pry'
RSpec.describe Author do
  it "author exist" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte).to be_a(Author)
  end

  it "author has a full name" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "author has an empty array of books to start" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.books).to eq([])
  end

  it "author can write books" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    villette = charlotte_bronte.write("Villette", "1853")

    charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    charlotte_bronte.write("Villette", "1853")
    expect(charlotte_bronte.write("Jane Eyre", "October 16, 1847")).to be_a Book

    expect(charlotte_bronte.write("Villette", "1853")).to be_a Book
# binding.pry
  end
end
