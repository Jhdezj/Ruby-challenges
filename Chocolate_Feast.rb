def chocolateFeast(n, c, m)


chocolates=wrappers=n/c
loop do
    chocolates += wrappers/m 
    wrappers = wrappers/m + wrappers % m
    break if wrappers < m
end
chocolates

end

=begin  Bereket's solution
    
def chocolateFeast(n, c, m)
  wrapper = bought = n / c
  while wrapper >= m
    bought += 1 
    wrapper += 1
    wrapper -= m
  end
  bought
end

old version
def chocolateFeast(n, c, m)
  wrapper = bought = n / c
  while wrapper >= m
    bought += 1 
    wrapper += 1
    wrapper -= m
  end
  bought
end

=end





puts chocolateFeast(6,2,2)