require 'rspec'
require './lib/class'

RSpec.describe Class do
  describe 'Iteration 1' do
    before :each do
      @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    end

    it 'exists' do
      expect(@book).to be_a(Book)
    end

    it 'has attributes' do
      expect(@book.title).to eq("To Kill a Mockingbird")
    end

    it "can tell author's full name" do
      expect(@book.author).to eq("Harper Lee")
    end

    it "can tell publication year" do
      expect(@book.publication_year).to eq("1960")
    end
  end
end
