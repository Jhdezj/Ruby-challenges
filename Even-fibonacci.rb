def even_fibonacci(n, prev_num = 0, next_num = 1, sum = 0)
    if next_num <= n 
      sum += next_num if next_num.even?
      prev_num, next_num = next_num, prev_num + next_num
      even_fibonacci(n, prev_num, next_num, sum)
    else
      sum
    end
  end