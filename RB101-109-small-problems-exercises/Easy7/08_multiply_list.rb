=begin
Title:Multiply List
-------------------------Process The Problem
  Input:array with two sub arrays
  Output: an array that is an array of the products of the coresponding elements in each array. The elements that have the same index. 
  Requirements: arrays are the same size
  Rules:
  Mental Model(stepwise):
          - access each  array using []
          - use a counter integer to increment the products and put them into a new array.
          - make a new array and a counter integer at the begining of the method. 
          - insert the products into the array and return the array
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

def multiply_list(array1, array2)
  new_array= []
  counter = 0
  array1.size.times do 
    new_array << array1[counter]*array2[counter]
    counter += 1
    new_array
   end
   new_array
end





p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
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