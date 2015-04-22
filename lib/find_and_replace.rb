class String
  define_method(:find_and_replace) do |original, replacement|
    words = self.split()
    new_words = []
    words.each() do |word|
      if word.eql?(original)
         new_words.push(replacement)
      else
        new_words.push(word)
      end
    end
      new_sentence = new_words.join(" ")
      new_sentence
  end
end
