require './lib/author'
require './lib/book'

RSpec.describe Author do
  before(:each) do
  @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists' do
    expect(@charlotte_bronte).to be_an_instance_of(Author)
  end

  it 'has a name' do
    expect(@charlotte_bronte.name).to eql("Charlotte Bronte")
  end

  it 'writes a book' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eql(Book)
  end

  it 'has a title' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.title).to eql("Jane Eyre")
  end

end
