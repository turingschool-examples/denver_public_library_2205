require './lib/book'
require './lib/author'

RSpec.describe Author do
  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}


  it "text" do
    expect(charlotte_bronte).to be_an(Author)
  end

  it "has attributes" do
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end

  it "can write new books" do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    expect(charlotte_bronte.books.length).to eq(2)
    expect(charlotte_bronte.books.first.title).to eq("Jane Eyre")
    expect(charlotte_bronte.books.last.title).to eq("Villette")
  end
end
