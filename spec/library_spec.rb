require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  it "exists" do
    expect(@dpl).to be_instance_of(Library)
  end

  it "returns Library name" do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it "returns array of Library books" do
    expect(@dpl.books).to eq([])
  end

  it "returns array of Library authors" do
    expect(@dpl.authors).to eq([])
  end

  it "can return array of filled authors and books" do
    expect(@dpl.authors.count).to eq(2)
    expect(@dpl.books.count).to eq(4)
  end

  it "returns publications within the given time range" do
    expect(@dpl.publication_time_frame_for(charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
    expect(@dpl.publication_time_frame_for(harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end
end
