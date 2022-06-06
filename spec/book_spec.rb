require "rspec"

RSpec.describe Book do

  it "exists" do
    book = Book.new
    expect(book).to be_instance_of(Book)
  end
end
