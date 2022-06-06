require './lib/book'
require './lib/author'

RSpec.describe Author do
  describe '#initialize' do
    it 'exists' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte).to be_instance_of(Author)
    end

    it 'has a name' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it 'has an empty array of books' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.books).to eq([])
    end
  end

  describe '#write' do
    it 'has a book' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")

      expect(jane_eyre.title).to eq("Jane Eyre")
      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end
