require 'rspec'
require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do

  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  it 'exists' do
    expect(@dpl).to be_instance_of(Library)
  end

  it 'returns name' do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it 'initializes with empty array of books' do
    expect(@dpl.books).to eq([])
  end

  it 'initializes with empty array of authors' do
    expect(@dpl.authors).to eq([])
  end

end
