# Complete the howManyGames function below.
def howManyGames(p, d, m, s)
    # Return the number of games you can buy
    return 0 if s == 0 && s < p
    total_spent = 0
  counter = 0
  while total_spent <= s    if p > m
      total_spent += p
      p = p - d
      counter += 1 if total_spent <= s
    elsif p <= m
      total_spent += m
      counter += 1 if total_spent <= s
    end
  end
  counter
end