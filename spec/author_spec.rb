require './lib/book'
require './lib/author'

RSpec.describe Author do
  before(:each) do
    # @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    @author = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end
  describe 'Iteration 2' do
    it 'exists' do
      expect(@author).to be_a(Author)
    end

    it 'has a name' do
      expect(@author.name).to eq("Charlotte Bronte")
    end

    it 'has an array of books' do
      expect(@author.books).to eq([])
    end

    it 'can write books' do
      jane_eyre = @author.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
      expect(@author.books).to eq([jane_eyre])
    end

    it 'can add multiple books' do
      jane_eyre = @author.write("Jane Eyre", "October 16, 1847")
      villette = @author.write("Villette", "1853")
      expect(@author.books).to eq([jane_eyre, villette])
    end
  end
end
