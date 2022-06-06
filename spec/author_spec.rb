require './lib/book'
require './lib/author'
require 'rspec'
require 'pry'
RSpec.describe Author do
  it "author exist" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte).to be_a(Author)
  end
end
