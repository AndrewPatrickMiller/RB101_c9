def repeater(string)
  newstring= ""
  string.chars { |char| newstring << "#{char}#{char}"}
  newstring
end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''
