
def xor?(bool1,bool2)
  if !bool1 && bool2
    true
  elsif bool1 && !bool2
    true
  else
    false
  end
end








p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
