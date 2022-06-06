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

  it 'has a name' do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it 'returns an empty array of books' do
    expect(@dpl.books).to eq([])
  end
  it 'returns an empty array of authors' do
    expect(@dpl.authors).to eq([])
  end
end
