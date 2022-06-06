require './lib/book'
require './lib/author'
require './library'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  it 'has an instance of a library' do
    expect(@dpl).to be_a(Library)
  end
end
