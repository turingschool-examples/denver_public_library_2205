require './lib/book'
require './lib/author'
require 'pry'

RSpec.describe do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'is an instance of' do
    expect(@charlotte_bronte).to be_instance_of Author
  end

  it 'has a name' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'has an array of books by that author' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'can write a book from within the author class' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq(Book)
  end

  it 'can access the title' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'can add books to the books array' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
    expect(@charlotte_bronte.books[0].class).to eq(Book)
  end

end
