def word_sizes(string)
hash={}
  string.split.each do |strng|
    strng.downcase!
    strng= strng.gsub(/[^a-z]/i, '')

    if hash.has_key? strng.length
      hash[strng.length] += 1
    else
      hash.merge!({strng.length => 1})
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
