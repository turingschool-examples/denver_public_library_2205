require './lib/library'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  describe '#initialize' do
    it 'is a Library' do
      expect(@dpl).to be_a Library
    end

    it 'has a name' do
      expect(@dpl.name).to eq "Denver Public Library"
    end

    it 'has an empty array of books' do
      expect(@dpl.books).to eq []
    end

    it 'has an empty array of authors' do
      expect(@dpl.authors).to eq []
    end
  end
end
