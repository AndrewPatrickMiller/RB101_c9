=begin

RB101-RB109 - Small ProblemsEasy 1Array Average
Array Average

Write a method that takes one argument, an array containing integers, and
returns the average of all numbers in the array. The array will never be empty
and the numbers will always be positive integers.

Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
The tests above should print true.

PEDAC
input:Array
output:Average of all the numbers.
Rules: array must not be empty, the array has integers, the array returns integers



=end

a_integers = Array.new(10) {|i| i*2}
puts a_integers

def average(ary)
  sum = ary.inject(:+)
    average= sum/ary.length

end
