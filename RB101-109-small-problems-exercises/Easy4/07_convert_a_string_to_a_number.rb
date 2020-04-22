=begin
Title: Convert a String to a Number
-------------------------Process The Problem
  Input:string of digits
  Output: integer
  Requirements: numberic string
  Rules:cant use a method to convert  it directly
  Mental Model(stepwise):
          - Make a hash of that can convert string numbers to integers
          - iterate through the string and convert the elements to digits
          - turn an array of digits into an integer using mathematics
-------------------------Examples and Tests

-------------------------Data Structures

-------------------------Alorithim

- Make a hash of that can convert string numbers to integers
CONVERT = {
"1" => 1
"2" => 2
"3" => 3
"4" => 4
"5" => 5
"6" => 6
"7" => 7
"8" => 8
"9" => 9
"0" => 0
}
array =[]
- iterate through the string and convert the elements to digits
string.each_char{|char| array= CONVERT[char]}
- turn an array of digits into an integer using mathematics
integer =0
array.each {|num| integer = integer *10 + |num|}

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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
