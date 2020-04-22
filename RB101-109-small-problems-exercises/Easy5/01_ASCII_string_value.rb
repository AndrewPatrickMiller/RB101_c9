 
=begin
Title:
-------------------------Process The Problem
  Input:
  Output:
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

-------------------------Algorithim

PASTE MENTAL MODEL HERE THEN FILL ALGORITHIM IN BETWEEN THE STEPS BY CODE

-------------------------Code


=end


def ascii_value(string)
  array = []
    string.each_char {|char| array << char.ord}
  array.sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
