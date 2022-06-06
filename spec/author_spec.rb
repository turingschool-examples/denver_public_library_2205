require './lib/book'
require './lib/author'

Rspec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte",
                                    last_name: "Bronte"})

    @jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  end

  describe '#initialize' do
    it "should initialize an instant of an author" do
      expect(@charlotte_bronte).to be_a(Author)
    end

    it "has a name" do
      expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it "has collection of books in form of array"
      expect(@charlotte_bronte.books).to eq([])
    end

    it "has written a book Jane Eyre" do
      expect(jayne_eyre.class).to be_a(Book)
    end
end
