require './book'
require './author'

describe Author do
  before(:each) do
    @charlotte_bronte = Author.new({
    first_name: "Charlotte",
    last_name: "Bronte"})
  end

  it "is an author" do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it "has a name" do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "has no books by default" do
    expect(@charlotte_bronte.books).to eq([])
  end

  it "can write books" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@charlotte_bronte.books[1].name).to_be "Jane Eyre"
  end

  it "checks to make sure it's a Book" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre).to be_a(Book)
  end
end
