require './lib/book'
require './lib/author'

RSpec.describe do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    # @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
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

  xit 'can write a book from within the author class' do
    expect(@jane_eyre.class).to eq(Book)
  end

  xit 'can access the title' do
    expect(@jane_eyre.title).to eq("Jane Eyre")
  end



end
