require './lib/book'
require './lib/author'

RSpec.describe Author do
  it "exists" do
  charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  expect(charlotte_bronte).to be_instance_of Author
  end


  end
end
