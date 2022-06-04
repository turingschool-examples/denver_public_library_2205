require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({
                  first_name: "Charlotte",
                  last_name: "Bronte"
                  })
  end

  it 'exists & has attributes' do
    expect(@charlotte_bronte).to be_a(Author)
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'can write books' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")

    expect(jane_eyre).to be_a(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
    expect(villette.publication_year).to eq("1853")
  end


  it 'can add books' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")

    @charlotte_bronte.add_books(jane_eyre)
    @charlotte_bronte.add_books(villette)
    expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
    expect(@charlotte_bronte.books.first.publication_year).to eq("1847")
    expect(@charlotte_bronte.books.last.title).to eq("Villette")
  end
end
