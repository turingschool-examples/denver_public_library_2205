require './lib/book'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  it 'exists' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'has an author first_name' do
    expect(@book.author_first_name).to eql("Harper")
  end

  it 'has an author last_name' do
    expect(@book.author_last_name).to eql("Lee")
  end

  it 'has a title' do
    expect(@book.title).to eql("To Kill a Mockingbird")
  end

  it 'has a publication date' do
    expect(@book.publication_date).to eql("July 11, 1960")
  end

  it 'has an author' do
    expect(@book.author).to eql("Harper Lee")
  end

  it 'has a publication year' do
    expect(@book.publication_year).to eql("1960")
  end

end
