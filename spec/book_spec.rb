require './lib/helper'

RSpec.describe Book do
  let!(:book) {Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})}

  it "exists" do
    expect(book).to be_instance_of Book
  end

  it "has a title" do
    expect(book.title).to eq("To Kill a Mockingbird")
  end
end
