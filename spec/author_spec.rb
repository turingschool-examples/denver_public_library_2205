require './lib/helper'

RSpec.describe Author do
  let!(:charlotte_bronte) {Author.new({first_name: "Charlotte", last_name: "Bronte"})}

  it "exists" do
    expect(charlotte_bronte).to be_instance_of Author
  end
end
