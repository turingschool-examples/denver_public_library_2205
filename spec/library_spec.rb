require './lib/library'
require './lib/author'
require 'pry'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
  end

  it "exists and has attributes" do
    expect(@dpl).to be_a Library
    expect(@dpl.name).to eq "Denver Public Library"
    expect(@dpl.books).to eq []
    expect(@dpl.authors).to eq []
  end

  it "can add authors" do
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)
    expect(@dpl.authors).to eq [@charlotte_bronte, @harper_lee]
  end

  it "can add books by author" do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = @charlotte_bronte.write("The Professor", "1857")
    villette = @charlotte_bronte.write("Villette", "1853")
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    @charlotte_bronte.add_books(jane_eyre)
    @charlotte_bronte.add_books(professor)
    @charlotte_bronte.add_books(villette)
    @harper_lee.add_books(mockingbird)

    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)

    expect(@dpl.books).to eq [jane_eyre, professor, villette, mockingbird]
  end
end
