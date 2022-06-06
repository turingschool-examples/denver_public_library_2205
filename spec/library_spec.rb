require './lib/helper'

RSpec.describe Library do
  let!(:dpl) {Library.new("Denver Public Library")}
  let!(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}
  let!(:harper_lee) {Author.new({first_name: "Harper", last_name: "Lee"})}

  it "exists" do
    expect(dpl).to be_instance_of Library
  end

  it "has a name" do
    expect(dpl.name).to eq("Denver Public Library")
  end

  it "has books" do
    expect(dpl.books).to eq([])
  end

  it "has authors" do
    expect(dpl.authors).to eq([])
  end

  it "has books" do
    expect(dpl.books).to eq([])
    charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    charlotte_bronte.write("The Professor", "1857")
    charlotte_bronte.write("Villette", "1853")
    harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    expect(dpl.books.first).to be_instance_of Book
    expect(dpl.books.count).to eq(4)
  end

  it "has authors" do
    expect(dpl.books).to eq([])
    charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    charlotte_bronte.write("The Professor", "1857")
    charlotte_bronte.write("Villette", "1853")
    harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    expect(dpl.authors[0]).to be_instance_of Author
    expect(dpl.authors.count).to eq(2)
  end

  it "can return the publication time frame for an author" do
    expect(dpl.publication_time_frame_for(charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
    expect(dpl.publication_time_frame_for(harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end
end
