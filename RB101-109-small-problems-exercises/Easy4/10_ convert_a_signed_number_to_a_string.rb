=begin
Title:
-------------------------Process The Problem
  Input: integer
  Output: string with a sign
  Requirements:
  Rules:
  Mental Model(stepwise):
          - convert the integer to a string
          -evaluate the integer if it is greater than or less than 0
          - add the respective sign to the string
          -
          -
          -
          -
-------------------------Examples and Tests

-------------------------Data Structures

-------------------------Alorithim

PASTE MENTAL MODEL HERE THEN FILL ALGORITHIM IN BETWEEN THE STEPS BY CODE

-------------------------Code
- convert the integer to a string
method that we made already to convert an integer to a string  but if
the number is negative
-evaluate the integer if it is greater than or less than 0
- add the respective sign to the string


=end

def integer_to_string(integer)
 string = integer.digits.reverse.join
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-" + integer_to_string(-integer)
  when 0 then "0"
  when 1 then "+" + integer_to_string(integer)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
