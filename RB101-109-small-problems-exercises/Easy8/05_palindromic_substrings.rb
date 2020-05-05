=begin
Title: Palindromic Substrings
-------------------------Process The Problem
  Input: text
  Output: the palindromic substrings
  Requirements:find every substring that is a palidnrome
  Rules:
  Mental Model(stepwise):
          - compare if the sequence of characters is the same forward as it is backwards using reverse.
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
require './04_all_substrings.rb'

def palindromes(string)
  new_array = []
  substrings(string).each do |element|
    if element == element.reverse && element.length > 1
      new_array << element
       new_array
    end
  end
  new_array
end

p palindromes('abcd')# == []
p palindromes('madam')# == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')# == [ 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada','adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did','-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == [ 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
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