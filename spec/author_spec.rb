require './lib/book'
require './lib/author'
require 'pry'

RSpec.describe Author do
  it "exists" do
  charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  expect(charlotte_bronte).to be_instance_of Author
  end

  it "has a name" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.full_name).to eq("Charlotte Bronte")
  end

  it "books has an empty array by default" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.books).to eq([])
  end

  it "can write books" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")


    expect(jane_eyre).to be_instance_of Book
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")

    villette = charlotte_bronte.write("Villette", "1853")

    expect(villette).to be_instance_of Book
    expect(villette.class).to eq(Book)
    expect(villette.title).to eq("Villette")
    expect(villette.publication_year).to eq("1853")
  end

  it "can add books to an author" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")

    charlotte_bronte.add_book(jane_eyre)
    charlotte_bronte.add_book(villette)

    expect(charlotte_bronte.books).to eq([jane_eyre, villette])
  end

end
