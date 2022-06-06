require 'pry'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end
  it "exist" do
    expect(@charlotte_bronte).to be_a Author
  end
  it "can return author full name" do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end
  it "starts with an empty array of books" do
    expect(@charlotte_bronte.books).to eq([])
  end
  it "can add a book written by the author" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
    expect(jane_eyre.publication_date).to eq("October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books.length).to eq(2)
  end
end
