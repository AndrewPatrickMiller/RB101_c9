=begin
Title:All Substrings
-------------------------Process The Problem
  Input:string
  Output:array of all the substirngs
  Requirements:
  Rules:
  Mental Model(stepwise):
          -
          -
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
require './03_leading_substrings.rb'
def substrings(string)
  counter = 0
  array = []
  loop do 
   array << substrings_at_start(string[counter..-1])
   counter +=1
   break if counter == string.length
  end
  array.flatten
end

# p substrings('abcde')

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