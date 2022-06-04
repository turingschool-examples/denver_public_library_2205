require './lib/book'
require './lib/author'
require './lib/library'
require 'pry'

RSpec.describe do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  it 'is an instance of' do
    expect(@dpl).to be_instance_of Library
  end

  it 'has a name' do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it 'has a collection of books' do
    expect(@dpl.books).to eq([])
  end

  it 'has a collection of authors' do
    expect(@dpl.authors).to eq([])
  end

  it 'has an add author method' do
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)
    expect(@dpl.authors).to eq([@charlotte_bronte, @harper_lee])
  end



end
