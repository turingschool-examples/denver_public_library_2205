require "rspec"
require './lib/book.rb'

RSpec.describe Book do

  it "exists" do
    data = {author_first_name: "Harper",
                      author_last_name: "Lee", title: "To Kill a Mockingbird",
                      publication_date: "July 11, 1960"}
    book = Book.new(data)
    expect(book).to be_instance_of(Book)
  end

  it "can return details of a book" do
    data = {author_first_name: "Harper",
                      author_last_name: "Lee", title: "To Kill a Mockingbird",
                      publication_date: "July 11, 1960"}
    book = Book.new(data)
    expect(book.author_first_name).to eq("Harper")
    expect(book.author_last_name).to eq("Lee")
    expect(book.title).to eq("To Kill a Mockingbird")
  end

  it "can return an author's full name" do
    data = {author_first_name: "Harper",
                      author_last_name: "Lee", title: "To Kill a Mockingbird",
                      publication_date: "July 11, 1960"}
    book = Book.new(data)
    expect(book.author).to eq("Harper Lee")
  end
end
