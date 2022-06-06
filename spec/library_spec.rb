require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  describe '#initialize' do
    it 'exists' do
      dpl = Library.new("Denver Public Library")

      expect(dpl).to be_instance_of(Library)
    end
  end
  describe '@name' do
    it 'has a name' do
      dpl = Library.new("Denver Public Library")

      expect(dpl.name).to eq("Denver Public Library")
    end
  end

  describe '@books' do
    it 'has an empty array of books' do
      dpl = Library.new("Denver Public Library")

      expect(dpl.books).to eq([])
    end
  end

  describe '@authors' do
    it 'has an empty array of authors' do
      dpl = Library.new("Denver Public Library")

      expect(dpl.authors).to eq([])
    end
  end

  describe '#add_author' do
    it 'can add authors to the empty array' do
      dpl = Library.new("Denver Public Library")
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      professor = charlotte_bronte.write("The Professor", "1857")
      villette = charlotte_bronte.write("Villette", "1853")

      harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

      mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

      dpl.add_author(charlotte_bronte)
      dpl.add_author(harper_lee)

      expect(dpl.authors).to eq([charlotte_bronte, harper_lee])
    end
  end
  
end
