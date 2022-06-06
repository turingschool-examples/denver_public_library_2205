require "rspec"
require './lib/book.rb'
require './lib/author.rb'
require './lib/library.rb'

RSpec.describe Library do

  it "exists" do
    dpl = Library.new("Denver Public Library")
    expect(dpl).to be_instance_of(Library)
  end

  it "can return the details of a library" do
    dpl = Library.new("Denver Public Library")
    expect(dpl.name).to eq("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
    expect(dpl.books).to eq([])
  end
  #Reading the interaction in interation 3 shows that adding an author, adds all
  #said author's books to the library. Ask instructor if this can later be split
  #to where a library has an 'add_book' method.

  it "can add an author to the library and return the count of books" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    expect(dpl.authors.length).to eq(0)
    expect(dpl.books.length).to eq(0)
    dpl.add_author(charlotte_bronte)
    expect(dpl.authors.length).to eq(1)
    expect(dpl.books.length).to eq(3)
    dpl.add_author(harper_lee)
    expect(dpl.authors.length).to eq(2)
    expect(dpl.books.length).to eq(4)
  end

  it "can return the time frame for an given author's publications" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    expect(dpl.publication_time_frame_for(charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
    expect(dpl.publication_time_frame_for(harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end

  it "can checkout a book" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    dpl.checkout(jane_eyre)
    expect(dpl.checked_out_books.length).to eq(1)
    dpl.checkout(mockingbird)
    expect(dpl.checked_out_books.length).to eq(2)
  end

  it "can return a book" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    dpl.checkout(jane_eyre)
    dpl.checkout(mockingbird)
    expect(dpl.checked_out_books.length).to eq(2)
    dpl.return(jane_eyre)
    expect(dpl.checked_out_books.length).to eq(1)
  end

  it "can return the most popular book" do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    dpl.checkout(jane_eyre)
    dpl.checkout(mockingbird)
    dpl.return(jane_eyre)
    dpl.checkout(jane_eyre)
    expect(dpl.most_popular_book).to eq(jane_eyre)
  end
end
