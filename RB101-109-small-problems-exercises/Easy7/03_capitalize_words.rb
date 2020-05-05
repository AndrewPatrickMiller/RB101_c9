=begin
Title:Capitalize Words
-------------------------Process The Problem
  Input: mutli word string
  Output: same string with he first letters of each word uppercased other letter lowercased
  Requirements: return a new string with the original value
  Rules:
  Mental Model(stepwise):
          - downcase the string. 
          -split it into words
          -upercase the first letter of each word
          -
          -
          -
          -
-------------------------Examples and Tests
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

-------------------------Data Structures

-------------------------Algorithim(how many methods?)
          - downcase the string. 
              Use String#downcase on the input string. 
          -split it into words
              Use String#split to convert the string to an Array
          -upercase the first letter of each word
              use String#capitalize to capitalize the first letter.
-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require 'pry-byebug'

def word_cap(string)
  string.downcase.split.map {|word| word.capitalize}.join ' '
end

p word_cap('four score and seven')# == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

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