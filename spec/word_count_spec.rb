require('rspec')
require('word_count')

describe('String#word_count') do
  it("will compare two different strings and return 0") do
    expect(("tofu").word_count("seitan")).to(eq(0))
  end
  it("will return 1 if two single word strings match") do
    expect(("tempeh").word_count("tempeh")).to(eq(1))
  end
  it("will return 1 for a multiple word string that contains a single word") do
    expect(("tofurky").word_count("I love tofurky in the summer.")).to(eq(1))
  end
  it("will return number of matches for string that contains single word multiple times") do
    expect(("cashew").word_count("Cheese made from cashew nuts has lead to the rise in popularity of the cashew nut.")).to(eq(2))
  end
end
