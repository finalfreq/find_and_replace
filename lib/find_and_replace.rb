class String
  define_method(:find_and_replace) do |original, replacement|
    parts = self.split(original)
    new_parts = []
    parts.each() do |part|
      new_parts.push(part)
      new_parts.push(replacement)
    end
      new_parts.pop()
      new_sentence = new_parts.join()
      new_sentence
  end
end

# my cat loves the cathedral.
# "my" "cat" "loves" "the" "cathedral."
# "my " " loves the " "hedral."
