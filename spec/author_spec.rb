require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it "is an instance of a author" do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it "has a name" do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it "has no books by default" do
    expect(@charlotte_bronte.books).to eq([])
  end

  it "can write books" do

    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")

    expect(@jane_eyre.class).to eq(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")

    expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])
  end

end
