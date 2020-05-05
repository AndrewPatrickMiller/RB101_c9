=begin
Title: Multiplication Average
-------------------------Process The Problem
  Input: array of integers
  Output: multiplies every number together and then divides by the total integers. 
  Requirements: the array is not empty
  Rules: round to three decimal places
  Mental Model(stepwise):
          - initialize an integer and assign it to the product of all the numbers of the array
          - divide the product by the number of elements in the array
          -round the quotient to the nearest thousandths place
          -
          -
          -
          -
-------------------------Examples and Tests
show_multiplicative_average([3, 5]) == 7.500

show_multiplicative_average([6]) == 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667
-------------------------Data Structures

-------------------------Algorithim(how many methods?)

  Mental Model(stepwise):
          - initialize an integer and assign it to the product of all the numbers of the array
          array.reduce(:*) Array#reduce
          - divide the product by the number of elements in the array
          Array#size
          -round the quotient to the nearest thousandths place
          BigDecimal#round(3)

-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require 'pry-byebug'

def show_multiplicative_average(array)
  product = array.reduce(:*)
  average = product/Float(array.size)
  result = format("%.3f",average)
  puts "The result is #{result}!"
end 

p show_multiplicative_average([3, 5]) == 7.500

p show_multiplicative_average([6]) == 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667
=begin
--------------------------------------------------------------------------------
-------------------------Debugging
Personal
- Patient and Systematic
- Fanatical intention and attention to details.
General Approach
- reproduce the error consistently
- figure out a solutions
- pay attention to code "smells"
Tools
- puts vs print vs p
- return values and outputs
- terminal irb
-pry-byebug

-------------------------Follow Up Questions

Are there any words phrases or syntax of which you do not know?

Did all your methods come from the core library?
  if no, what other resources did your methods come from?

Do you know the scope of each variable, and where each variable was assigned, reassigned, or mutated?

Were the variables passed by value or by reference? (pass by reference passes the original object pass by value copies the value to a new variable)

Where do the variables point?

What are the side effects of the methods, and what are the return values?

Where did your methods come from? (core library, frameworks, personal files, other libraries)

=end