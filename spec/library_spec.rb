require './lib/book'
require './lib/author'
require './lib/library'
require 'pry'

RSpec.describe do
  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  it 'is an instance of' do 
    expect(@dpl).to be_instance_of Library
  end

end
