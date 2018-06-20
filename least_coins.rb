#write out your code here

def least_coins(cents)
  answer = {:quarters => 0, :dimes => 0, :nickels => 0, :pennies => 0}
  if cents % 25 == 0
    answer[:quarters] = cents/25
    return answer
  else
    remainder = answer % 25
    num_quarters = (answer / 25).to_i
    answer[:quarters] = num_quarters
    cents = remainder

  if cents % 10 == 0
    answer[:dimes] = cents/10
    return answer
  else
    remainder = answer % 10
    num_dimes = (answer/10).to_i
    answer[:dimes] = num_dimes
    cents = remainder

  if cents % 5 == 0
    answer[:nickels] = cents/5
    return answer
  else
    remainer = answer%5
    num_nickels = (answer/5).to_i
    answer[:nickels] = num_nickels
    cents = remainder

  answer[:pennies] = cents
  return answer

end

puts least_coins(29)
