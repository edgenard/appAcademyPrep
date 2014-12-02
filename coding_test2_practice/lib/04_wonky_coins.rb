def wonky_coins(n)
  size = 0
  if n == 0
    size = 1
  else
    size = wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
  end
  size
end

