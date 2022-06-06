require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'has an instance of an author' do
    expect(@charlotte_bronte).to be_a(Author)
  end
end
