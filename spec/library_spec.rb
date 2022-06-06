require './lib/helper'

RSpec.describe Library do
  let!(:dpl) {Library.new("Denver Public Library")}

  it "exists" do
    expect(dpl).to be_instance_of Library
  end
end
