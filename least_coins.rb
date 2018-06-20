#write out your code here

def least_coins(cents)
  answer = {:quarters => 0, :dimes => 0, :nickels => 0, :pennies => 0}
  if cents % 25 == 0
    answer[:quarters] = cents/25
    return answer
  else
    remainder = cents % 25
    num_quarters = (cents / 25).to_i
    answer[:quarters] = num_quarters
    cents = remainder
  end

  if cents % 10 == 0
    answer[:dimes] = cents/10
    return answer
  else
    remainder = cents % 10
    num_dimes = (cents/10).to_i
    answer[:dimes] = num_dimes
    cents = remainder
  end

  if cents % 5 == 0
    answer[:nickels] = cents/5
    return answer
  else
    remainer = cents%5
    num_nickels = (cents/5).to_i
    answer[:nickels] = num_nickels
    cents = remainder
  end

  answer[:pennies] = cents
  return answer

end

puts least_coins(31)
