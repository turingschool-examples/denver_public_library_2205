require './lib/book'

RSpec.describe Book do

  it "exist" do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    expect(book).to be_a Book
    expect(book.author_first_name).to eq("Harper")
  end

  it "has a title" do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    expect(book.title).to eq("To Kill a Mockingbird")
  end

  it "has an author" do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    expect(book.author).to eq("Harper Lee")
  end

  it "has a publication_year" do
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    expect(book.publication_year).to eq("1960")
  end

end
