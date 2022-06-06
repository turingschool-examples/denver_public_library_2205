require './lib/helper'

RSpec.describe Library do
  let!(:dpl) {Library.new("Denver Public Library")}

  it "exists" do
    expect(dpl).to be_instance_of Library
  end

  it "has a name" do
    expect(dpl.name).to eq("Denver Public Library")
  end
end
