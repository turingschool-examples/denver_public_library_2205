require './lib/book'
require './lib/author'

RSpec.describe Author do
	describe "Iteration 2" do

		it 'exists' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte).to be_an_instance_of Author
		end

		it 'returns the authors full name' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte.name).to eq("Charlotte Bronte")
		end

		it 'returns a list of books the author has written' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte.books).to eq([])
		end

		it 'can create a new book by an author' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
			jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

			expect(jane_eyre.class).to be Book
			expect(jane_eyre.title).to eq("Jane Eyre")
		end

		it 'can add newly written books to books array' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
			jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
			villette = charlotte_bronte.write("Villette", "1853")

			expect(charlotte_bronte.books.count).to eq(2)

		end

	end
end
