require './lib/book'
require './lib/author'

RSpec.describe Author do

  let(:charlotte_bronte) { Author.new({first_name: "Charlotte", last_name: "Bronte"}) }

  it "exists" do
    expect(charlotte_bronte).to be_a(Author)
  end

end
