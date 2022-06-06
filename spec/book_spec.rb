require 'helper'

RSpec.describe Book do
  before do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  it 'can create new instance of Book' do
    expect(@book).to be_instance_of Book
  end

  it 'can return title' do
    expect(@book.title).to eq("To Kill a Mockingbird")
  end

  it 'can return author full name' do
    expect(@book.author).to eq("Harper Lee")
  end

  it 'can return year published' do
    expect(@book.publication_year).to eq("1960")
  end


end
