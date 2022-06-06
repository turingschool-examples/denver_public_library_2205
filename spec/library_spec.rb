require './lib/library'
require './lib/author'

RSpec.describe Library do

  let(:dpl) { Library.new("Denver Public Library") }

  it "exists" do
    expect(dpl).to be_a(Library)
  end

  it "has attributes" do
    expect(dpl.name).to eq("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
  end

end
