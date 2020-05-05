=begin
Title: Swap Case
-------------------------Process The Problem
  Input:String
  Output: new string every uppercase letter is replaced by its lowercase version and every lowercase version is replace by uts uppercase version. 
  Requirements: may not use the method String#sawcase
  Rules:
  Mental Model(stepwise):
          - make a new array 
          - turn the string into an array
          -check the case of each letter
          - if the letter is upperase lower case it and vice versa
          -  then concatenate the letter into the array
          - return the new array. 
          -
          -
-------------------------Examples and Tests
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

-------------------------Data Structures

-------------------------Algorithim(how many methods?)

          - make a new array 
          Array#[] to make a new array
          - turn the string into an array
          *or stry String#chars each_char* and bypass making an array
          String#split to turn the string into an array
          -check the case of each letter
          Use the String#== to check the case.
          - if the letter is upperase lower case it and vice use a control flow if else statement to run the two different methods
          -  then concatenate the letter into the array
          add the letters to the new array
          - return the new array. 
          check to make sure that the new array is being returned. (map should return the new array without mutating the old one.)

-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require 'pry-byebug'
def swapcase(string)
  new_array = []
    string.each_char do |char|
      if char == char.upcase 
        new_array.append(char.downcase)
      else
        new_array.append(char.upcase)
      end
    end
  new_array.join
end
p swapcase('CamelCase')# == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

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