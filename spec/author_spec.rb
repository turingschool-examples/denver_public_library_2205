require './lib/helper'

RSpec.describe Author do
  let!(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}
  let!(:jane_eyre) {charlotte_bronte.write("Jane Eyre", "October 16, 1847")}


  it "exists" do
    expect(charlotte_bronte).to be_instance_of Author
  end

  it "has a name" do
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  xit "has an array of books" do
    expect(charlotte_bronte.books).to eq([])
  end

  xit "can write a book" do

  end
end
