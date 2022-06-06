require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  describe 'Iteration 2' do
    before :each do
      @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    end

    it 'exists' do
      expect(@charlotte_bronte).to be_a(Author)
      expect(@jane_eyre).to be_a(Author)
    end

    it 'has attributes' do
      expect(@class.name).to eq("Charlotte Bronte")
      expect(@class.books).to eq([])
    end

    it "can write a book" do
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to be_a(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
      expect(@charlotte_bronte.books).to eq([jane_eyre])

      villette = @charlotte_bronte.write("Villette", "1853")

      expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end
