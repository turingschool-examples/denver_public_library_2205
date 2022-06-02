require './lib/author'

RSpec.describe Author do

  describe "#initialize" do

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    it "exists" do
      expect(charlotte_bronte).to be_a(Author)
    end

    it "has a name" do
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it "begins with empty books array" do
      expect(charlotte_bronte.books).to eq([])
    end
  end

  describe "#write" do

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    it "can write a book" do
      expect(jane_eyre.class).to eq(Book) # or
      expect(jane_eyre).to be_a(Book)
    end

    it "written books have a title" do
      expect(jane_eyre.title).to eq("Jane Eyre")
    end


    it " accumulates written books in array" do
      villette = charlotte_bronte.write("Villette", "1853")
      expect(charlotte_bronte.books.length).to eq(2)
      expect(charlotte_bronte.books.first.title).to eq("Jane Eyre")
    end
  end
end
