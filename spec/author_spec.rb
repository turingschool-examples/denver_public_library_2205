require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do

  before :each do
    @charlotte_bronte = Author.new({
      first_name: "Charlotte",
      last_name: "Bronte"
      })
  end

  it 'exists' do
    expect(@charlotte_bronte).to be_instance_of(Author)
  end

  it 'returns full name' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'initializes with empty array of books' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'can write a book' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'can return array of books by author' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")

    expect(@charlotte_bronte.books.class).to eq(Array)
    expect(@charlotte_bronte.books.length).to eq(2)
  end

end
