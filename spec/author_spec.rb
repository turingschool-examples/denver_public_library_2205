require 'helper'

RSpec.describe Author do
  before do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @villette = @charlotte_bronte.write("Villette", "1853")
  end

  it 'can return book by title'do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'can return empty array for author' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'can allow an author to write a book and return class' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to be_instance_of Book
    expect(jane_eyre.title).to eq("Jane Eyre")
  end


  xit '' do
    expect(@charlotte_bronte.books.count).to eq(1)
  end




end
