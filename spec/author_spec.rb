require './lib/book'
require './lib/author'
require 'pry'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it "exists and has attributes" do
    expect(@charlotte_bronte).to be_a Author
    expect(@charlotte_bronte.name).to eq "Charlotte Bronte"
    expect(@charlotte_bronte.books).to eq []
  end

  it "has a class and title" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq Book
    expect(jane_eyre.title).to eq "Jane Eyre"
  end

  it "can return and array of books" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    @charlotte_bronte.add_books(jane_eyre)
    @charlotte_bronte.add_books(villette)
    expect(@charlotte_bronte.books).to eq [jane_eyre, villette]
  end
end
