require './lib/book'
require './lib/author'

RSpec.describe Author do
before :each do

  @charlotte_bronte = Author.new({
    first_name: "Charlotte",
    last_name: "Bronte"
    })

  end

  it "exists" do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it "has details" do
    expect(@charlotte_bronte.first_name).to eq("Charlotte")
    expect(@charlotte_bronte.last_name).to eq("Bronte")
    expect(@charlotte_bronte.books).to eq([])
  end

  it "can add books to the books array attribute" do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(@jane_eyre.class).to be_a(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")
    expect(@jane_eyre.books).to eq([@jane_eyre])

    @villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books).to eq([@jane_eyre])
  end

end
