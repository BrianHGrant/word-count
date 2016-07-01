class String
  define_method(:word_count) do |word|
    base_letters = self.split("")
    check_letters = word.split("")
    if base_letters.eql?(check_letters)
      true
    else
      false
    end
  end
end
