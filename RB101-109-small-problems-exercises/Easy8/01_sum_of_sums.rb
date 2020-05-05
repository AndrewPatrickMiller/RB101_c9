=begin
Title: Sun of Sums
-------------------------Process The Problem
  Input: array
  Output: the sum of the sum of each leading subsequence. Sum each subsequence of the array that starts with the first index. 
  Requirements: start with the first index
  Rules: integer out put
  Mental Model(stepwise):
          - iterate through the subsequences of the array
          - add up the subsequences of each array. 
          - 
          -
          -
          -
          -
-------------------------Examples and Tests

-------------------------Data Structures

-------------------------Algorithim(how many methods?)

PASTE MENTAL MODEL HERE THEN FILL ALGORITHIM IN BETWEEN THE STEPS BY CODE

-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require 'pry-byebug'

def sum_of_sums(array)
  result =0
  counter =0 
    loop do 
     result+= array[0..counter].reduce(:+)
      counter +=1
      break if counter == array.size
    end
  result
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
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