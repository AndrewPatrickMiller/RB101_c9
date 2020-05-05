require './07_double_char.rb'

def double_consonants(string1)
  new_string= ""
  a = *('a'..'z')
  b = *('A'..'Z')
  alphabet = a.append(b).flatten!
  alphabet.reject! {|letter| ['A','E','I','O','U','a','e','i','o','u'].include? letter}
  string1.chars do |char|
    if alphabet.include? char
      new_string << "#{char}#{char}"
    else
      new_string << char
    end
  end
  new_string
end




p double_consonants('String')# == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""