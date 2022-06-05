require './lib/book'

RSpec.describe Book do
  before :each do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  describe '#initialize' do
    it 'is a Book' do
      expect(@book).to be_a Book
    end

    it 'has a title' do
      expect(@book.title).to eq "To Kill a Mockingbird"
    end

    it 'has an author' do
      expect(@book.author).to eq 'Harper Lee'
    end

    it 'has a publication_year' do
      expect(@book.publication_year).to eq '1960'
    end

    it 'starts with being checked out 0 times' do
      expect(@book.times_checked_out).to eq 0
    end
  end
end
