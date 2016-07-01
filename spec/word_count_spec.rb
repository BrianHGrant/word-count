require('rspec')
require('word_count')

describe('String#word_count') do
  it("will compare two different strings and return false") do
    expect(("tofu").word_count("seitan")).to(eq(false))
  end

end
