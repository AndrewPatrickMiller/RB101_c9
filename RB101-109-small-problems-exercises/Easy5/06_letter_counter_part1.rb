=begin
Title: Letter Counter part 1
-------------------------Process The Problem
  Input:string
  Output: hash
  Requirements: the has must have a key that is the length of the word and the value will be the number of words that are that long
  Rules: the string can have one or more spaces between the words the words do consist of non alphabetic characters so count those
  Mental Model(stepwise):
          - make a hash split the string into an array
          - iterate through the array and populate the hash with keys and values
          - return the hash
          -
          -
          -
          -
-------------------------Examples and Tests
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
-------------------------Data Structures
we will use a string and an array to populate a hash, and we will return the hash
with a key for length of a word and the value with number of words at that length
-------------------------Algorithim

- make a hash split the string into an array
hash={}
  string.split.each do
- iterate through the array and populate the hash with keys and values
      if hash.has_key? string_length
        hash[string.length] += 1
      else
        hash.merge(string.length => 1)
      end

- return the hash
-------------------------Code
def word_sizes(string)
hash={}
  string.split.each do |strng|
    if hash.has_key? strng
      hash[strng] += 1
    else
      hash.merge!({strng.length => 1})
    end
  end
end
=end

def word_sizes(string)
hash={}
  string.split.each do |strng|
    if hash.has_key? strng.length
      hash[strng.length] += 1
    else
      hash.merge!({strng.length => 1})
    end
  end
  hash
end

p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
