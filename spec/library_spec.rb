require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do
	describe "Iteration 3" do
		it 'exists' do
			dpl = Library.new("Denver Public Library")

			expect(dpl).to be_an_instance_of(Library)
		end

		it 'return the librarys name' do
			dpl = Library.new("Denver Public Library")

			expect(dpl.name).to eq("Denver Public Library")
		end

		it 'returns the books contained in the library' do
			dpl = Library.new("Denver Public Library")

			expect(dpl.books).to eq([])
		end

		it 'returns the authors carried at the library' do
			dpl = Library.new("Denver Public Library")

			expect(dpl.authors).to eq([])
		end

		it 'can add new authors and their books to the library' do
			dpl = Library.new("Denver Public Library")
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
			jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
			professor = charlotte_bronte.write("The Professor", "1857")
			villette = charlotte_bronte.write("Villette", "1853")
			harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
			mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

			dpl.add_author(charlotte_bronte)
			dpl.add_author(harper_lee)

			expect(dpl.authors.count).to eq(2)
			expect(dpl.books.count).to eq(4)
		end

		it 'can return a publication time frame for an author' do
			dpl = Library.new("Denver Public Library")
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
			jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
			professor = charlotte_bronte.write("The Professor", "1857")
			villette = charlotte_bronte.write("Villette", "1853")
			harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
			mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

			dpl.add_author(charlotte_bronte)
			dpl.add_author(harper_lee)
	
			expect(dpl.publication_time_frame_for(charlotte_bronte)[:start]).to eq("1847")
			expect(dpl.publication_time_frame_for(charlotte_bronte)[:end]).to eq("1857")
			expect(dpl.publication_time_frame_for(harper_lee)[:start]).to eq("1960")
			expect(dpl.publication_time_frame_for(harper_lee)[:end]).to eq("1960")
		end
	end
end
