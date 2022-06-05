require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({
      first_name: "Charlotte",
      last_name: "Bronte"})
  end

  describe '#initialize' do
    it 'is an author' do
      expect(@charlotte_bronte).to be_a Author
    end

    it 'has a name' do
      expect(@charlotte_bronte.name).to eq 'Charlotte Bronte'
    end

    it 'initializes with an empty array of books' do
      expect(@charlotte_bronte.books).to eq []
    end
  end

  describe '#write' do
    before :each do
      @jane_eyre = @charlotte_bronte.write('Jane Eyre', 'October 16, 1847')
      @villette = @charlotte_bronte.write("Villette", "1853")
    end

    it 'can create a Book object' do
      expect(@jane_eyre).to be_a Book
      expect(@jane_eyre.title).to eq 'Jane Eyre'
    end

    it 'returns an array of books if multiple are written' do
      expect(@charlotte_bronte.books).to eq [@jane_eyre, @villette]
    end
  end

end
