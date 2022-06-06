require './lib/book'

RSpec.describe Book do
  describe 'Iteration 1' do

    before :each do
      @book = Book.new({author_first_name: "Harper", author_last_name: "Lee",
        title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
      @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte",
        title: "Jane Eyre", publication_date: "October 16, 1847"})
      @villette = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte",
        title: "Villette", publication_date: "1853"})

    end

    it 'exists' do
      expect(@book).to be_a(Book)
      expect(@jane_eyre).to be_a(Book)
      expect(@villette).to be_a(Book)
    end

    it 'has a book title' do
      expect(@book.title).to eq("To Kill a Mockingbird")
      expect(@jane_eyre.title).to eq("Jane Eyre")
    end

    it 'has a book title' do
      expect(@book.author).to eq("Harper Lee")
    end

    it 'has a publication year' do
      expect(@book.publication_year).to eq("1960")
    end

  end
end #-------------------end of RSpec---------------------
