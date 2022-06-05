require './lib/library'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")

    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  describe '#initialize' do
    it 'is a Library' do
      expect(@dpl).to be_a Library
    end

    it 'has a name' do
      expect(@dpl.name).to eq "Denver Public Library"
    end

    it 'has an empty array of books' do
      expect(@dpl.books).to eq []
    end

    it 'has an empty array of authors' do
      expect(@dpl.authors).to eq []
    end

    it 'has an empty array of checked_out_books' do
      expect(@dpl.checked_out_books).to eq []
    end
  end

  describe '#add_author' do
    it 'can add an author to the array' do
      @dpl.add_author(@charlotte_bronte)
      expect(@dpl.authors).to eq [@charlotte_bronte]
      @dpl.add_author(@harper_lee)
      expect(@dpl.authors).to eq [@charlotte_bronte, @harper_lee]
    end

    it 'adds all books by an author to the books array' do
      @dpl.add_author(@charlotte_bronte)
      expect(@dpl.books).to eq [@jane_eyre, @professor, @villette]
      @dpl.add_author(@harper_lee)
      expect(@dpl.books).to eq [@jane_eyre, @professor, @villette, @mockingbird]
    end
  end

  describe '#publication_time_frame_for' do
    it 'returns a hash with keys of start and end years' do
      expect(@dpl.publication_time_frame_for(@charlotte_bronte)).to eq ({:start => "1847", :end => "1857"})

      expect(@dpl.publication_time_frame_for(@harper_lee)).to eq ({:start => "1960", :end => "1960"})
    end
  end

  describe '#checkout' do
    it 'returns false if a book is not in the array' do
      expect(@dpl.checkout(@mockingbird)).to eq false
    end

    it 'returns true if a book is in the books array' do
      @dpl.add_author(@harper_lee)
      expect(@dpl.checkout(@mockingbird)).to eq true
    end

    it 'adds the book to checked_out_books' do
      @dpl.add_author(@harper_lee)
      expect(@dpl.checkout(@mockingbird)).to eq true
      expect(@dpl.checked_out_books).to eq [@mockingbird]
    end

    it 'returns false if a book is already checked out' do
      @dpl.add_author(@harper_lee)
      expect(@dpl.checkout(@mockingbird)).to eq true
      expect(@dpl.checked_out_books).to eq [@mockingbird]
      expect(@dpl.checkout(@mockingbird)).to eq false
    end
  end

  describe '#return' do
    it 'removes the book passed in from checked_out_books' do
      @dpl.add_author(@harper_lee)
      @dpl.checkout(@mockingbird)
      expect(@dpl.checked_out_books).to eq [@mockingbird]
      @dpl.return(@mockingbird)
      expect(@dpl.checked_out_books).to eq []
    end
  end
end
