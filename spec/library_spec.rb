require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
before :each do
  @dpl = Library.new("Denver Public Library")
  end

  it "exists" do
    expect(@dpl).to be_a(Library)
  end

  it "has details" do
    expect(@dpl.name).to eq("Denver Public Library")
    expect(@dpl.books).to eq([])
    expect(@dpl.authors).to eq([])
  end

  it "can add authors that have written books" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    professor = charlotte_bronte.write("The Professor", "1857")

    villette = charlotte_bronte.write("Villette", "1853")

    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    @dpl.add_author(charlotte_bronte)

    @dpl.add_author(harper_lee)

    expect(@dpl.authors).to eq(charlotte_bronte, harper_lee)
    expect(@dpl.books).to eq([professor, villette, mockingbird])
  end

end
