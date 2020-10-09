def repeatedString(s, n)

  leftovers = n/(s.length)*(s.count "a") + (s[0, n%(s.length)].count "a")
  
  

end


s="aba"
n= 2

print repeatedString(s, n)

