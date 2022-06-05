require './lib/library'
require './lib/author'
require 'pry'

RSpec.describe Library do
  dpl = Library.new("Denver Public Library")

  it "exists" do
    expect(dpl). to be_instance_of Library
  end
end
