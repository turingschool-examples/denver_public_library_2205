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

end
