=begin
Title: Convert a string to a signed number
-------------------------Process The Problem
  Input: string with a + - sign at the first index and digits at the rest.
  Output: an integer number with a sign.
  Requirements: positive integers do not have signs but negative ones do
  Rules: string in and integer out
  Mental Model(stepwise):
          - use the hash and method from the last exercise to turn the strings into numbers
          -take the symbol and add it into the negative numbers using math
          - make sure t return the new integer
          -
          -
          -
          -
-------------------------Examples and Tests
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

-------------------------Data Structures
string going in it will go into our method and come out as an integer.
we are going to slice the string so that we can make access each character.

-------------------------Alorithim

- use the hash and method from the last exercise to turn the strings into numbers
CONVERT = {
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"0" => 0
}
-take the symbol and add it into the negative numbers using math
 if string[0]== "-"
  integer = -1 * integer
end
- make sure t return the new integer
-------------------------Code
CONVERT = {
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"0" => 0
}

def string_to_integer(string)
array=[]
  string.each_char {|char| array << CONVERT[char] }
integer = 0
  array.each {|num| integer = integer * 10 + num}
integer
end


def string_to_signed_integer(string)
integer = string_to_integer(string[1..-1])
symbol = string[0]
  if symbol == "-"
    integer = integer * -1
  end
  integer
end




=end


CONVERT = {
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"0" => 0
}

def string_to_integer(string)
array=[]
  string.each_char {|char| array << CONVERT[char] }
integer = 0
  array.each {|num| integer = integer * 10 + num}
integer
end


def string_to_signed_integer(string)
integer = 0
result= 0
symbol = string[0]
  if symbol == "-"
    integer = string_to_integer(string[1..-1])
    result = integer * -1
  elsif symbol == '+'
    result = string_to_integer(string[1..-1])
  else
    result = string_to_integer(string)
  end
result
end

p string_to_signed_integer('4321') # == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
