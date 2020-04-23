 require 'pry-byebug'
 UPPERCASE_LETTERS = [*('A'..'Z')]
 LOWERCASE_LETTERS = [*('a'..'z')]
 
 
def letter_case_count(string)
  results = {lowercase: 0, uppercase: 0, neither:0}
    UPPERCASE_LETTERS.each do |letter|
      string.chars do |char|
        if char == letter
          results[:uppercase] = results[:uppercase] + 1 
          p results
          p char
        end
      end
    end
   LOWERCASE_LETTERS.each do |letter|
    string.chars do |char|
      if char == letter
        results[:lowercase] = results[:lowercase] + 1 
        p results
        p char
      end
    end  
     pry.binding
  end
  p string
 
  # pry.binding
  # string.chars do |char|
  #   if !UPPERCASE_LETTERS.include?(char) && !LOWERCASE_LETTERS.include?(char)
  #     results[:neither] +=1
  #   end
  # end
end


letter_case_count('abCdef 123')# == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
