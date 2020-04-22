=begin
Title:
-------------------------Process The Problem
  Input: string with non alphabet characters
  Output: return a string with alphabet characters only
  Requirements: maintain the white space
  Rules: return only one white space for  a group of non alphabetic characters
  Mental Model(stepwise):
          - take the string and and do a gsub for the symbols to a space
          -take all the occurences of white space and convert them to one white space


-------------------------Examples and Tests
cleanup("---what's my +*& line?") == ' what s my line '

-------------------------Data Structures
we will use strings and if things have to get complicated we will use arrays.
-------------------------Algorithim

- take the string and and do a gsub for the symbols to a space
  string.gsub /regex/   -- .gsub(/[^a-z]/i, '')
-take all the occurences of white space and convert them to one white space
string. gsub /regex.

-------------------------Code
def cleanup(string)
  string_letters_only = string.gsub(/[^a-z]/i, '')
  string_letters_only = string_letters_only.gsub(/something/)
end

=end

def cleanup(string)
  string_letters_only = string.gsub(/[^a-z]/i, ' ')
  string_letters_only = string_letters_only.gsub(/(\s+)/, ' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '
