class String
  define_method(:word_count) do |sentence|
    base_letters = self.downcase.split("")
    words = sentence.downcase.split(" ")
    match_counter = 0
    words.each do |word|
      check_letters = word.sub(/[^0-9a-zA-Z]+/i, '').split("")
      if base_letters.==check_letters
        match_counter += 1
      end
    end
    match_counter
  end
end
