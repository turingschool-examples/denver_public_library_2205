require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

  end

it "exists" do
  expect(@charlotte_bronte).to be_a(Author)
end

it "has a name" do
  expect(@charlotte_bronte.name).to eq("Charlotte Bronte")

end

it "has a collection of books" do
  expect(@charlotte_bronte.books).to eq([])
end

it "can write new books and hold information of all books" do
  @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  @villette = @charlotte_bronte.write("Villette", "1853")

  @jane_eyre = Book.new({author_first_name: "Charlotte",
                        author_last_name: "Bronte",
                        title: "Jane Eyre",
                        publication_date: "October 16, 1847"})
  @villette = Book.new({author_first_name: "Charlotte",
                        author_last_name: "Bronte",
                        title: "Villette",
                        publication_date: "1853"})

  expect(@jane_eyre).to be_a(Book)
  expect(@jane_eyre.title).to eq("Jane Eyre")
  expect(@villette).to be_a(Book)
  expect(@villette.title).to eq("Villette")
  expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])


end
end





# @jane_eyre = Book.new({author_first_name: "Charlotte",
#                   author_last_name: "Bronte",
#                   title: "Jane Eyre",
#                   publication_date: "October 16,1847"})
#
# @villette = Book.new({author_first_name: "Charlotte",
#                   author_last_name: "Bronte",
#                   title: "Villette",
#                   publication_date: "1853"})
