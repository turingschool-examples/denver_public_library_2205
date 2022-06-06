require './lib/library'
require './lib/author'

RSpec.describe Library do

  let(:dpl) { Library.new("Denver Public Library") }

  it "exists" do
    expect(dpl).to be_a(Library)  
  end

end
