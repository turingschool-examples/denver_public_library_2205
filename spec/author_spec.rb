require './lib/book'
require './lib/author'

RSpec.describe Author do
before :each do

  @charlotte_bronte = Author.new({
    first_name: "Charlotte",
    last_name: "Bronte"
    })

  end

  it "exists" do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it "has details" do
    expect(@charlotte_bronte.first_name).to eq("Charlotte")
    expect(@charlotte_bronte.last_name).to eq("Bronte")
  end

end
