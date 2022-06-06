require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
  end

  it 'initialize an instance of Library' do
    expect(@dpl).to be_instance_of Library
  end

  it 'has a name and attributes' do
    expect(@dpl.name).to eq("Denver Public Library")
    expect(@dpl.books).to eq([])
    expect(@dpl.authors).to eq([])
  end

  it 'return instance of Author class' do
    expect(@charlotte_bronte).to be_instance_of Author
  end

  it 'Jane Eyre is an instance of Book' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre).to be_instance_of Book
  end

  it 'The Professor is an instance of Book' do
    professor = @charlotte_bronte.write("The Professor", "1857")
    expect(professor).to be_instance_of Book
  end

  it 'Harper Lee is instance of Author and Mockingbird to be a Book' do
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    expect(@harper_lee).to be_instance_of Author
    expect(mockingbird).to be_instance_of Book
  end

  it 'add given authors' do
    @dpl.add_authors(@charlotte_bronte)
    @dpl.add_authors(@harper_lee)
    expect(@dpl.authors).to eq([@charlotte_bronte, @harper_lee])
  end

  it 'return array of books from library' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = @charlotte_bronte.write("The Professor", "1857")
    villette = @charlotte_bronte.write("Villette", "1853")
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    @dpl.add_authors(@charlotte_bronte)
    @dpl.add_authors(@harper_lee)
    expect(@dpl.books).to be_a Array
  end

  it 'return author publication time frame for Charlotte Bronte' do
    professor = @charlotte_bronte.write("The Professor", "1857")
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    @dpl.add_authors(@charlotte_bronte)
    expect(@dpl.publication_time_frame_for(@charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
  end

  it 'return author publication time frame for Harper Lee' do
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    @dpl.add_authors(@harper_lee)
    expect(@dpl.publication_time_frame_for(@harper_lee)).to eq({:start=>"1960", :end=>"1960"})
  end

end
