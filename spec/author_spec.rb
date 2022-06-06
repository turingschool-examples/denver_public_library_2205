require './lib/author'

RSpec.describe Author do
  describe 'Iteration 2' do
      before :each do
        @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
        # @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
        # @villette = @charlotte_bronte.write("Villette", "1853")

      end

      it 'exists' do
        expect(@charlotte_bronte).to be_a(Author)
      end

      it 'can return the authors name' do
        expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
      end

      it 'can return an array of books' do
        expect(@charlotte_bronte.books).to be_a(Array)
      end

      it 'returns an instance of a book' do
        jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
        expect(jane_eyre).to be_a(Book)
      end

      it 'can return a list of books written by an author' do
        @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

        @villette = @charlotte_bronte.write("Villette", "1853")
        expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])
      end


    end
end
