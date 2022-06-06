require './lib/book'

RSpec.describe Book do
	describe "Iteration 1" do


		it 'exists' do
			book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

			expect(book).to be_an_instance_of Book
		end

		it 'returns the book title' do
			book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

			expect(book.title).to eq("To Kill a Mockingbird")
		end

		it 'returns the author' do
			book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

			expect(book.author).to eq("Harper Lee")
		end

		it 'returns the publication year' do
			book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

			expect(book.publication_year).to eq("1960")
		end

	end

end
