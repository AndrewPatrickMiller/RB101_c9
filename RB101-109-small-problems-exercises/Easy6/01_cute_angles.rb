=begin
Title:
-------------------------Process The Problem
  Input:degrees integer
  Output: string wth defree minutes and second notation 
  Requirements: there is a sybol follwing each number 
  Rules: can use the defree constant
  Mental Model(stepwise):
          - take the integer
          - convert it to minutes then seconds return the quotient and the remainder for each operation
          -use both the quotient in the remainder to come up with the result
          - seperate each value into its own variable 
          -interpolate it into a string that gets returned by the method. 
          - create two methods one for conversion and creating variables and one for the string. 
          -
-------------------------Examples and Tests
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

-------------------------Data Structures
float ----->to integers -----> string 

-------------------------Algorithim(how many methods?)
- take the integer
- convert it to minutes then seconds return the quotient and the remainder for each operation
    1degreee = 60 minutes integer remainder is equal to the number of minutes and second remaining 
-use both the quotient in the remainder to come up with the result
    we will have to get the remaining fraction of a degree and use it to conver it to minutes and then the remaining fraction of minutes will be c
- seperate each value into its own variable 
use a method to create each variable
-interpolate it into a string that gets returned by the method. 
- create two methods one for conversion and creating variables and one for the string. 



-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require "pry-byebug"



def dms(integer)
  
  
  minutes_remaining = (integer-integer.to_i) *60
  seconds_remaining = (minutes_remaining - minutes_remaining.to_i)*60
  "#{integer.to_i}\xC2\xB0#{minutes_remaining.to_i}'#{seconds_remaining.to_i}\""
  
end




p dms(30) #== %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773)# == %(93°02'05")
p dms(0)# == %(0°00'00")
p dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")


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





=end
