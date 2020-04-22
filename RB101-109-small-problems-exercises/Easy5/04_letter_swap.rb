=begin
Title:Letter Swap
-------------------------Process The Problem
  Input: string
  Output: string
  Requirements: the first letter and last letter of every word are swapped
  Rules:
  Mental Model(stepwise):
          - String split it into an array of words
          - iterate through each word and make a substitution
          - join the words on a space
          -
          -
          -
          -
-------------------------Examples and Tests
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

-------------------------Data Structures
strings
and
arrays

-------------------------Algorithim

- String split it into an array of words
   array = string.split
- iterate through each word and make a substitution
        array.map! do |string|
          string[-1] + string[1..-2] +string [0]
- join the words on a space
array. join (" ")
-------------------------Code

def swap(string)
  array= string.split
    array.map! do |string|
      string[-1] + string[1..-2] + string [0]
    end
  array.join(" ")
end

=end

def swap(string)

  if string.length != 1
    array= string.split
      array.map! do |string|
          if string.length != 1
        string[-1] + string[1..-2] + string [0]
          else
            string
          end
      end
    array = array.join(" ")
  else
    string
  end
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a')  == 'a'
p swap('ab')  == 'ba'
p swap('cba')  == 'abc'
