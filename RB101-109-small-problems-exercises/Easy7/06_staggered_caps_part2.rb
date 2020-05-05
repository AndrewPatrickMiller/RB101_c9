=begin
Title: Staggered Caps part 2
-------------------------Process The Problem
  Input: string
  Output:string with alternating capse only relative to letters it ignores non letter characters
  Requirements:
  Rules:
  Mental Model(stepwise):
          - make and array a..Z
          - if the character is included in the array then add the counter if not then do not add t the counter
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

def staggered_case(string)
  a = *('a'..'z')
  b = *('A'..'Z')
  alphabet = [[a],[b]].flatten
  new_string = ""
  i= 0
  string.chars do |char|
    
      if i.even? && alphabet.include?(char)
        new_string << char.upcase
        i+=1
      elsif !alphabet.include?(char)
        new_string << char.upcase
      else
        new_string << char.downcase
        i+=1
      end
  end
   new_string
end

p staggered_case('I Love Launch School!')  == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

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