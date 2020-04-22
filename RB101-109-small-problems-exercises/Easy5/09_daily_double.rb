=begin
Title: Daily Double
-------------------------Process The Problem
  Input:string
  Output: string of unique letters in the same order
  Requirements: the letters that are dupicated need to go back to one letter without
  deleting all of those character types
  Rules: cant use squeeze method
  Mental Model(stepwise):
          - iterate through each character of the string
          - make a new string to create teh output
          - only put the character into the new string if the previous string
          is not ==
          - return the new string
          -
          -
          -
-------------------------Examples and Tests
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

-------------------------Data Structures
we will stick with the string when we use the each char method we will input the
fragmented strings back into the string selectively

-------------------------Algorithim

- iterate through each character of the string
previous_char=''
  string.each_char do |char|
      if char != previous_char
        previus = previous_char + char
      end
  end
end

- make a new string to create the output
- only put the character into the new string if the previous character
is not == to the current
- return the new string
-------------------------Code
def crunch(string)
previous_char=''
new_string= ''
  string.each_char do |char|
      if char != previous_char
        new_string = new_string + char
        previous_char = char
      end
  end
new_string
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=end


def crunch(string)
previous_char=''
new_string= ''
  string.each_char do |char|
      if char != previous_char
        new_string = new_string + char
        previous_char = char
      end
  end
new_string
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
