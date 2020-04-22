def reverse_words(string)
  words_array= string.split
    for word in words_array do
      if word.length >= 5
        word.reverse!
      end
    end
  words_array.join(" ")
  end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')
