require './lib/book'

describe Book do
  before(:each) do
    @book = Book.new({
      :title => "To Kill a Mockingbird",
      :author => "Harper Lee",
      :publication_year => "1960"})
  end

  it "is an instance of Book" do
    expect(@book).to be_a(Book)
  end

  it "has the correct attributes" do
    expect(@book.title).to eq("To Kill a Mockingbird")
    expect(@book.author).to eq("Harper Lee")
    expect(@book.publication_year).to eq("1960")
  end 
end
