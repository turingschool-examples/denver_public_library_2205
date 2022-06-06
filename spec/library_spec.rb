require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  let(:dpl) {Library.new("Denver Public Library")}

  let(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}
  let(:harper_lee) {Author.new({first_name: "Harper", last_name: "Lee"})}

  it "exists" do
    expect(dpl).to be_an(Library)
  end

  it "has attributes" do
    expect(dpl.name).to eq("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
  end

  it "can add authors" do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    expect(dpl.books.length).to eq(0)
    expect(dpl.authors).to eq([])
    dpl.add_authors(charlotte_bronte)
    dpl.add_authors(harper_lee)
    expect(dpl.authors).to eq([charlotte_bronte, harper_lee])
    expect(dpl.books.length).to eq(4)
    expect(dpl.books.first.title).to eq("Jane Eyre")
    expect(dpl.books.last.title).to eq("To Kill a Mockingbird")
  end

  it "can make a hash by date of first book written and last book written" do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_authors(charlotte_bronte)
    dpl.add_authors(harper_lee)

    ch_bront_attributes = {
      :start => "1847",
      :end => "1857"
    }

    hp_lee_attributes = {
      :start => "1960",
      :end => "1960"
    }

    expect(dpl.publication_time_frame_for(charlotte_bronte)).to eq(ch_bront_attributes)
    expect(dpl.publication_time_frame_for(harper_lee)).to eq(hp_lee_attributes)
  end
end
