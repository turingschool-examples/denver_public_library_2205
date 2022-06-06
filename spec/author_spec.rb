require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it "exists" do
    expect(@charlotte_bronte).to be_instance_of(Author)
  end

  it "returns the name of the author" do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "returns the book array" do
    expect(@charlotte_bronte.books).to eq([])
  end

  it "returns the proper class type" do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@jane_eyre.class).to eq(Book)
  end

  it "returns the title for the writer" do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@jane_eyre.title).to eq("Jane Eyre")
  end

  it "returns an array with books filled in now" do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books.count).to eq(2)
  end
end
