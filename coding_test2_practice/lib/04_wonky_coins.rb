def wonky_coins(n)
  coins = []
  if n == 0
    coins << 0
  else
    coins = [wonky_coins(n/2), wonky_coins(n/3), wonky_coins(n/4)]
  end
  p coins
  coins.size
  
end

p wonky_coins(5)