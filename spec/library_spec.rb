require "rspec"
require './lib/book.rb'
require './lib/author.rb'
require './lib/library.rb'

RSpec.describe Library do

  it "exists" do
    dpl = Library.new("Denver Public Library")
    expect(dpl).to be_instance_of(Library)
  end

  it "can return the details of a library" do
    dpl = Library.new("Denver Public Library")
    expect(dpl.name).to eq("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
    expect(dpl.books).to eq([])
  end

end
