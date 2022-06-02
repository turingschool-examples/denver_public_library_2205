require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do

  describe "#initialize" do

    dpl = Library.new("Denver Public Library")

    it "exists" do
      expect(dpl).to be_a(Library)
    end

    it "has a name" do
      expect(dpl.name).to eq("Denver Public Library")
    end

    it "begins with empty books array" do
      expect(dpl.books).to eq([])
    end

    it "begins with empty authors array" do
      expect(dpl.authors).to eq([])
    end
  end

  describe "#add author/publication time frame" do

    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    it "can add authors" do
      dpl.add_author(charlotte_bronte)
      dpl.add_author(harper_lee)
      expect(dpl.authors.length).to eq(2)
      expect(dpl.authors.first.name).to eq("Charlotte Bronte")
    end

    it "can add books" do
      expect(dpl.books.length).to eq(4)
      expect(dpl.books.last.title).to eq("To Kill a Mockingbird")
      expect(dpl.books[1].author).to eq("Charlotte Bronte")
    end

    it "can give publication time frames" do
      expect(dpl.publication_time_frame_for(charlotte_bronte)).to be_a(Hash)
      expect(dpl.publication_time_frame_for(charlotte_bronte)[:start]).to eq("1847")
      expect(dpl.publication_time_frame_for(charlotte_bronte)[:end]).to eq("1857")
      expect(dpl.publication_time_frame_for(harper_lee)).to eq({start: "1960", end: "1960"})
    end
  end
end
