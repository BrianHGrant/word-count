require('rspec')
require('word_count')

describe('String#word_count') do
  it("will compare two different strings and return false") do
    expect(("tofu").word_count("seitan")).to(eq(false))
  end
  it("will return true if two strings match") do
    expect(("tempeh").word_count("tempeh")).to(eq(true))
  end

end
