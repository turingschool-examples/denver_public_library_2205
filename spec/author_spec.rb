require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'has an instance of an author' do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it 'returns the authors name' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'returns books by the author' do
    expect(@charlotte_bronte.books).to eq([])
  end

end
