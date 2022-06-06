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

  it 'returns an instance of a book wrote by the author' do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(@jane_eyre).to be_a(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")
  end

end
