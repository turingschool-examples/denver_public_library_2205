require './lib/library'
require './lib/author'

RSpec.describe Library do

  let(:dpl) { Library.new("Denver Public Library") }
  let(:charlotte_bronte) { Author.new({first_name: "Charlotte", last_name: "Bronte"}) }
  let(:harper_lee) { Author.new({first_name: "Harper", last_name: "Lee"}) }

  it "exists" do
    expect(dpl).to be_a(Library)
  end

  it "has attributes" do
    expect(dpl.name).to eq("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
  end

  it "can add authors and return an array" do
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    expect(dpl.authors).to eq([charlotte_bronte, harper_lee])
  end

end
