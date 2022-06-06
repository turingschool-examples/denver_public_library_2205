require './lib/book'
require './lib/author'

RSpec.describe Author do

  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})


  end

  describe '#initialize' do
    it "should initialize an instance of an author" do
      expect(@charlotte_bronte).to be_a(Author)
    end

    it "has a name" do
      expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it "has collection of books in form of array" do
      expect(@charlotte_bronte.books).to eq([])
    end

    it "has written a book, Jane Eyre" do
      @jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jayne_eyre.class).to be_a(Book)
      expect(jayne_eyre.title).to eq("Jane Eyre")
    end

    it "has written another book, Villette" do

      @villette = charlotte_bronte.write("Villette", "1853")
      expect(villette.title).to eq("Villete")
    end
  end
end
