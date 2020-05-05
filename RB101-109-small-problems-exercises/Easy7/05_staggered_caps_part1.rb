=begin
Title: Staggered Caps
-------------------------Process The Problem
  Input: string
  Output: new string that has the original value using staggered capitalizeation .  Meaning every other letter is capitalized.
  Requirements:
  Rules:
  Mental Model(stepwise):
          - make a new string
          - iterate through each character
          - determine if it is an odd or even character index
          - on the first character index capitalize the letter
          - on every other index change the case
          - for each letter append it to the new string. 
          - make sure the new string is returned. 
  
-------------------------Examples and Tests
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
-------------------------Data Structures

-------------------------Algorithim(how many methods?)

          - make a new string
          - iterate through each character
          - determine if it is an odd or even character index
          - on the first character index capitalize the letter
          - on every other index change the case
          - for each letter append it to the new string. 
          - make sure the new string is returned. 
-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require 'pry-byebug'

def staggered_case(string)
  new_string = ""
  i= 0
  string.chars do |char|
    p i
      if i.even?
        new_string << char.upcase
        i+=1
      else
        new_string << char.downcase
        i+=1
      end
  end
   new_string
end

 p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
 p staggered_case('ALL_CAPS') == 'AlL_CaPs'
 p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

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