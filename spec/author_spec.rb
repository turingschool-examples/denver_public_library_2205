require "./lib/book"
require "./lib/author"


RSpec.describe(Author) do
  before(:each) do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it(" #exists") do
    expect(@charlotte_bronte).to(be_a(Author))
  end

  it("#has a name") do
    expect(@charlotte_bronte.name).to(eq("Charlotte Bronte"))
  end

  it("#has an empty array") do
    expect(@charlotte_bronte.books).to(eq([]))
  end

  xit("#returns a book instance writtin by the same author ") do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@charlotte_bronte.write).to(eq("Jane Eyre", "October 16, 1847"))
  end

  it("# is a class book") do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@jane_eyre).to(be_a(Book))
  end

  it("#has a title")
  @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  expect(@jane_eyre.title).to(eq("Jane Eyre"))
end
