class String
  define_method(:word_count) do |sentence|
    base_letters = self.split("")
    words = sentence.split(" ")
    match_counter = 0
    words.each do |word|
      check_letters = word.split("")
      if base_letters.==check_letters
        match_counter += 1
      end
    end
    match_counter
  end
end
