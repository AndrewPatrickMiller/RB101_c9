def short_long_short(string1,string2)
    if string1.length > string2.length
      long_string = string1
      short_string = string2
    else
      long_string = string2
      short_string = string1
    end
    short_string +long_string + short_string
end



short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
