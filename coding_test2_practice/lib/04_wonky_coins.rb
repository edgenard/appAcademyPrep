def wonky_coins(n)
  coins = 0
  if n == 0
    coins = 1
  else
    coins = wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
  end
  coins
end

