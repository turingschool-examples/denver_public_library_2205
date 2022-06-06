require 'pry'
require './lib/library'
require './book'
require './lib/author'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end
  it "exists and has a name" do
    expect(@dpl).to be_a Library
    expect(@dpl.name).to eq("Denver Public Library")
  end
  it "starts with no books or authors" do
    expect(@dpl.books).to eq([])
    expect(@dpl.authors).to eq([])
  end
  it "can add authors" do
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)

    expect(@dpl.authors.length).to eq(2)
    expect(@dpl.authors.first).to be_a Author
    expect(@dpl.authors.first.name).to eq("Charlotte Bronte")
  end
  it "adding authors adds that authors books to books array" do
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)

    expect(@dpl.books.length).to eq(4)
    expect(@dpl.books.first).to be_a Book
    expect(@dpl.books.first.title).to eq("Jane Eyre")
  end
  it "can return an authors start year and end year publication year hash" do
    expect(@dpl.publication_time_frame_for(@charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
    expect(@dpl.publication_time_frame_for(@harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end
end
