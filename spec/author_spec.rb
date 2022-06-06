require './lib/book'
require './lib/author'

RSpec.describe Author do

  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exist' do
    expect(@charlotte_bronte).to be_instance_of Author
  end

  it 'returns full name of author' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'authors books default as empty array' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'jane_eyre is an instance of book' do
    jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte"})
    expect(jane_eyre).to be_instance_of Book
  end

  it 'writes book and adds it to books array' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'writes another book and adds it to array' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
  end

end
